project = "Hands-on Introduction to Data Science with Python"
author = "Florian Huber"
copyright = "2025, Florian Huber"

extensions = [
    "myst_nb",
    "sphinxcontrib.bibtex",
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

html_theme = "sphinx_book_theme"
html_title = "Hands-on Introduction to Data Science with Python"
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

# Notebook behavior
nb_execution_mode = "cache"

# Optional MyST features
myst_enable_extensions = [
    "colon_fence",
    "deflist",
    "dollarmath",
    "amsmath",
    "substitution",
]

numfig = True

bibtex_bibfiles = ["book/references.bib"]
bibtex_default_style = "unsrt"
bibtex_reference_style = "author_year"
bibtex_bibliography_header = ".. rubric:: References"
