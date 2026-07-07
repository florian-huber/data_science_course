from pathlib import Path


# -- Project information -----------------------------------------------------

project = "Hands-on Introduction to Data Science with Python"
author = "Florian Huber"
copyright = "2026, Florian Huber"


# -- General configuration ---------------------------------------------------

extensions = [
    "myst_nb",
    "sphinxcontrib.bibtex",
    "sphinx.ext.githubpages",
]

source_suffix = {
    ".md": "myst-nb",
    ".ipynb": "myst-nb",
}

root_doc = "index"

exclude_patterns = [
    "_build",
    "material_and_raw",
    "README.md",
    "Thumbs.db",
    ".DS_Store",
    "**.ipynb_checkpoints",
]


# -- MyST / notebook configuration ------------------------------------------

myst_enable_extensions = [
    "colon_fence",
    "deflist",
    "dollarmath",
    "amsmath",
    "substitution",
]

nb_execution_timeout = 600

numfig = True


# -- Bibliography ------------------------------------------------------------

bibtex_bibfiles = ["book/references.bib"]
bibtex_default_style = "unsrt"
bibtex_reference_style = "author_year"
bibtex_bibliography_header = ".. rubric:: References"


# -- HTML output -------------------------------------------------------------

html_theme = "sphinx_book_theme"
html_title = project
html_logo = "_static/data_science_cover_illustration_logo.png"
html_favicon = "_static/favicon.ico"
html_static_path = ["_static"]

html_theme_options = {
    "repository_url": "https://github.com/florian-huber/data_science_course",
    "repository_branch": "main",
    "use_repository_button": True,
    "home_page_in_toc": True,
    "show_navbar_depth": 2,
    "max_navbar_depth": 2,
    "collapse_navbar": False,
    "launch_buttons": {
        "binderhub_url": "https://mybinder.org",
        "colab_url": "https://colab.research.google.com",
        "notebook_interface": "jupyterlab",
    },
}

html_js_files = [
    "https://cdnjs.cloudflare.com/ajax/libs/require.js/2.3.4/require.min.js",
]


# -- LaTeX / PDF output ------------------------------------------------------

latex_engine = "lualatex"

cover_image = Path(__file__).parent / "_static" / "data_science_cover_illustration.png"

latex_documents = [
    (
        "index",
        "hands_on_data_science_with_python.tex",
        project,
        author,
        "manual",
    ),
]

latex_elements = {
    "papersize": "a4paper",
    "pointsize": "11pt",
    "classoptions": ",oneside,openany",

    "preamble": r"""
\usepackage{graphicx}
\usepackage{titling}
\usepackage{geometry}

% Avoid fancyhdr warning:
\setlength{\headheight}{14pt}
""",

    "maketitle": rf"""
\begin{{titlepage}}
\thispagestyle{{empty}}
\centering
\vspace*{{-1in}}
\hspace*{{-1in}}
\includegraphics[width=\paperwidth,height=\paperheight,keepaspectratio]{{{cover_image.as_posix()}}}
\end{{titlepage}}
\clearpage
""",
}