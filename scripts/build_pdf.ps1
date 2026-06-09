$ErrorActionPreference = "Stop"

# ------------------------------------------------------------
# Build a PDF version of the Sphinx/MyST-NB book.
#
# What this script does:
# 1. Creates a temporary source copy in _pdf_source/
# 2. Converts notebooks such that
#    - cells tagged "hide-input" to also have "remove-input" in the temporary copy only
#    - add numbering to toctrees in _pdf_source/index.md
#    - change depth of toctrees in _pdf_source/index.md to 2 (if not already set)
#    
# 3. Modifies _pdf_source/index.md for PDF:
#    - removes :hidden: from toctrees
#    - adds :numbered: to toctrees
# 4. Builds LaTeX with Sphinx
# 5. Compiles the final PDF with latexmk
#
# Original source files are not modified.
# ------------------------------------------------------------

$ProjectRoot = Resolve-Path (Join-Path $PSScriptRoot "..")
$PdfSource = Join-Path $ProjectRoot "_pdf_source"
$LatexBuild = Join-Path $ProjectRoot "_build\latex"
$TexFile = "hands_on_data_science_with_python.tex"

Set-Location $ProjectRoot

Write-Host "Cleaning old temporary PDF source..."
Remove-Item -Recurse -Force $PdfSource -ErrorAction SilentlyContinue

Write-Host "Creating temporary PDF source copy..."
New-Item -ItemType Directory -Force $PdfSource | Out-Null

$ExcludeDirs = @(
    ".git",
    "_build",
    "_pdf_source",
    ".jupyter_cache",
    ".ipynb_checkpoints"
)

Get-ChildItem -Path $ProjectRoot -Force | Where-Object {
    $ExcludeDirs -notcontains $_.Name
} | ForEach-Object {
    Copy-Item -Path $_.FullName -Destination $PdfSource -Recurse -Force
}

Write-Host "Preparing temporary source for PDF build..."

$PythonCode = @'
import json
import re
from pathlib import Path


ROOT = Path("_pdf_source")
print(f"Using PDF source: {ROOT}")

notebooks = list(ROOT.rglob("*.ipynb"))
print(f"Found {len(notebooks)} notebook files.")


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
    cells_with_tags = 0

    for notebook_path in notebooks:
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

            if tags:
                cells_with_tags += 1

            # Normalize all tags to strings, just in case.
            tags = [str(tag) for tag in tags]
            metadata["tags"] = tags

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

    print(f"Found {cells_with_tags} cells with tags.")
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
        
        # Change :maxdepth: to 2 if it's set to a different value.
        block = re.sub(
            r"(?m)^[ \t]*:maxdepth:[ \t]*(\d+)[ \t]*\r?$",
            lambda m: ":maxdepth: 2" if m.group(1) != "2" else m.group(0),
            block,
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
'@

$PythonCode | python -

Write-Host "Cleaning old LaTeX build..."
Remove-Item -Recurse -Force $LatexBuild -ErrorAction SilentlyContinue

Write-Host "Building LaTeX with Sphinx..."
sphinx-build -E -a -b latex $PdfSource $LatexBuild

Write-Host "Compiling PDF..."
Set-Location $LatexBuild

latexmk -lualatex -interaction=nonstopmode -file-line-error $TexFile

Write-Host ""
Write-Host "PDF created:"
Write-Host (Join-Path $LatexBuild ($TexFile -replace "\.tex$", ".pdf"))