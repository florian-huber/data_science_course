#!/usr/bin/env bash
set -euo pipefail

# ------------------------------------------------------------
# Build a PDF version of the Sphinx/MyST-NB book.
#
# What this script does:
# 1. Creates a temporary source copy in _pdf_source/
# 2. Converts notebook cells tagged "hide-input" to also have
#    "remove-input" in the temporary copy only
# 3. Modifies _pdf_source/index.md for PDF:
#    - removes :hidden: from toctrees
#    - adds :numbered: to toctrees
# 4. Builds LaTeX with Sphinx
# 5. Compiles the final PDF with latexmk
#
# Original source files are not modified.
# ------------------------------------------------------------

PROJECT_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
PDF_SOURCE="${PROJECT_ROOT}/_pdf_source"
LATEX_BUILD="${PROJECT_ROOT}/_build/latex"
TEX_FILE="hands_on_data_science_with_python.tex"

cd "$PROJECT_ROOT"

echo "Cleaning old temporary PDF source..."
rm -rf "$PDF_SOURCE"

echo "Creating temporary PDF source copy..."
mkdir -p "$PDF_SOURCE"

rsync -a \
  --exclude ".git" \
  --exclude "_build" \
  --exclude "_pdf_source" \
  --exclude ".jupyter_cache" \
  --exclude "**/.ipynb_checkpoints" \
  ./ "$PDF_SOURCE"/

echo "Preparing temporary source for PDF build..."

python - <<'PY'
import json
import re
from pathlib import Path


ROOT = Path("_pdf_source")


def convert_hide_input_tags() -> None:
    """Add remove-input to notebook cells tagged hide-input."""
    skip_parts = {
        "_build",
        "_pdf_source",
        ".git",
        ".jupyter_cache",
        ".ipynb_checkpoints",
    }

    changed_files = 0
    changed_cells = 0

    for notebook_path in ROOT.rglob("*.ipynb"):
        if any(part in skip_parts for part in notebook_path.parts):
            continue

        try:
            notebook = json.loads(notebook_path.read_text(encoding="utf-8"))
        except Exception as error:
            print(f"Warning: could not read {notebook_path}: {error}")
            continue

        changed = False

        for cell in notebook.get("cells", []):
            metadata = cell.setdefault("metadata", {})
            tags = metadata.setdefault("tags", [])

            if "hide-input" in tags and "remove-input" not in tags:
                tags.append("remove-input")
                changed = True
                changed_cells += 1

        if changed:
            notebook_path.write_text(
                json.dumps(notebook, ensure_ascii=False, indent=1),
                encoding="utf-8",
            )
            changed_files += 1

    print(f"Updated {changed_cells} cells in {changed_files} notebook files.")


def adjust_index_toctrees() -> None:
    """Modify index.md toctrees for PDF output.

    - Remove :hidden:
    - Add :numbered: if missing
    """
    index_path = ROOT / "index.md"

    if not index_path.exists():
        raise FileNotFoundError(f"Could not find {index_path}")

    text = index_path.read_text(encoding="utf-8")

    def update_toctree(match: re.Match) -> str:
        block = match.group(0)

        # Remove :hidden: lines.
        block = re.sub(
            r"(?m)^[ \t]*:hidden:[ \t]*\r?\n",
            "",
            block,
        )

        # Add :numbered: after the opening ```{toctree} line
        # if the block does not already contain :numbered:.
        if not re.search(r"(?m)^[ \t]*:numbered:(?:[ \t]+.*)?$", block):
            block = re.sub(
                r"(```\{toctree\}[ \t]*\r?\n)",
                r"\1:numbered:\n",
                block,
                count=1,
            )

        return block

    # Match fenced MyST toctree blocks.
    text_new = re.sub(
        r"```\{toctree\}[\s\S]*?```",
        update_toctree,
        text,
    )

    if text_new != text:
        index_path.write_text(text_new, encoding="utf-8")
        print("Updated _pdf_source/index.md toctrees for PDF.")
    else:
        print("No toctree changes needed in _pdf_source/index.md.")


convert_hide_input_tags()
adjust_index_toctrees()
PY

echo "Cleaning old LaTeX build..."
rm -rf "$LATEX_BUILD"

echo "Building LaTeX with Sphinx..."
sphinx-build -E -a -b latex "$PDF_SOURCE" "$LATEX_BUILD"

echo "Compiling PDF..."
cd "$LATEX_BUILD"

latexmk -lualatex -interaction=nonstopmode -file-line-error "$TEX_FILE"

echo ""
echo "PDF created:"
echo "${LATEX_BUILD}/${TEX_FILE%.tex}.pdf"