[![Jupyter Book Badge](https://jupyterbook.org/badge.svg)](https://florian-huber.github.io/data_science_course/)
![GitHub Workflow Status (with event)](https://img.shields.io/github/actions/workflow/status/florian-huber/data_science_course/deploy_book.yml?label=Deploy%20book)
![GitHub Workflow Status (with event)](https://img.shields.io/github/actions/workflow/status/florian-huber/data_science_course/CI_tests.yml)

<p align="center">
    <img src="https://github.com/florian-huber/data_science_course/blob/main/images/data_science_cover_illustration.png" width="600" alt="Book cover">
</p>

# Introduction to data science (for not yet scientists)
Data Science course developed at the Düsseldorf University of Applied Sciences (HSD) and the Centre for Digitalization and Digitality (ZDD).

## Access the online version of this book:
For the rendered book use [this link](https://florian-huber.github.io/data_science_course/book/cover.html)!

## Citation & pdf version of this book:
A pdf version of this book can be found [on zenodo](https://zenodo.org/records/10805527)

This book and all material used to create the book are freely available and can be used according to the CC license (BY-NC-SA 4.0).
If you use (parts of) this book for your work, please cite the book as:

*Huber, F. (2024).*  
*Introduction to Data Science (for not-yet scientists).*  
*v0.9, 2024, Zenodo. https://doi.org/10.5281/zenodo.10805527*

## Create new environment for this course (recommended)
It is recommended to create a new environment for this course with many Python libraries that we will use in the Live Coding sessions. You can simply download the `environment.yml` file in this repository, or clone the repository using:
```
git clone https://github.com/florian-huber/data_science_course.git
```
Then, in the folder with the `environment.yml` file simply run:
```
conda env create -f environment.yml
```
This should create a Python 3.10 environment with the packages listed in the yaml-file.

**The classical conda environmental solver can be slow!** So it might make sense to switch to faster alternatives, either within Conda (see https://www.anaconda.com/blog/a-faster-conda-for-a-growing-community) or mamba.

## Build book using *Jupyter Book*

The current book project is meant to be generated using [*Jupyter Book*](https://jupyterbook.org). Once installed run the following terminal command from the cloned folder:
```
jupyter-book build . 
```

One option for creating a pdf of the entire book is:
```
jupyter-book build . --builder pdflatex
```
