import json
import re
from pathlib import Path

SOURCE_DIRS = [Path("book"), Path("notebooks")]
OUTPUT_FILE = Path("book/references.md")

# Matches:
# {cite}`key`
# {cite}`key1,key2`
# {cite:t}`key`
# {cite:p}`key1, key2`
CITE_PATTERN = re.compile(r"\{cite(?::[a-z])?\}`([^`]+)`")


def extract_citations_from_text(text: str) -> list[str]:
    """Extract citation keys from MyST citation syntax in plain text."""
    keys: list[str] = []
    for match in CITE_PATTERN.findall(text):
        for key in match.split(","):
            cleaned = key.strip()
            if cleaned:
                keys.append(cleaned)
    return keys


def extract_from_markdown_file(path: Path) -> list[str]:
    """Extract citations from a markdown file."""
    return extract_citations_from_text(path.read_text(encoding="utf-8"))


def extract_from_notebook_file(path: Path) -> list[str]:
    """Extract citations from markdown cells in a notebook."""
    with path.open("r", encoding="utf-8") as f:
        notebook = json.load(f)

    keys: list[str] = []
    for cell in notebook.get("cells", []):
        if cell.get("cell_type") != "markdown":
            continue
        source = cell.get("source", [])
        if isinstance(source, list):
            text = "".join(source)
        else:
            text = str(source)
        keys.extend(extract_citations_from_text(text))
    return keys


def collect_all_citations() -> list[str]:
    """Collect unique citation keys from all source files, preserving order."""
    seen: set[str] = set()
    ordered_keys: list[str] = []

    for source_dir in SOURCE_DIRS:
        if not source_dir.exists():
            continue

        for path in sorted(source_dir.rglob("*")):
            if path.suffix == ".md":
                keys = extract_from_markdown_file(path)
            elif path.suffix == ".ipynb":
                keys = extract_from_notebook_file(path)
            else:
                continue

            for key in keys:
                if key not in seen:
                    seen.add(key)
                    ordered_keys.append(key)

    return ordered_keys


def write_references_page(keys: list[str]) -> None:
    """Write a markdown page that cites all collected references."""
    lines = [
        "# Complete Bibliography",
        "",
        "This page collects all references cited throughout the book.",
        "",
    ]

    if not keys:
        lines.append("_No citations found._")
    else:
        for key in keys:
            lines.append(f"- {{cite}}`{key}`")

    lines.append("")
    OUTPUT_FILE.write_text("\n".join(lines), encoding="utf-8")


def main() -> None:
    keys = collect_all_citations()
    write_references_page(keys)
    print(f"Collected {len(keys)} unique citation keys.")
    print(f"Wrote bibliography page to: {OUTPUT_FILE}")


if __name__ == "__main__":
    main()