[![Jupyter Book Badge](https://jupyterbook.org/badge.svg)](https://florian-huber.github.io/data_science_course/)
![GitHub Workflow Status (with event)](https://img.shields.io/github/actions/workflow/status/florian-huber/data_science_course/deploy_book.yml?label=Deploy%20book)




# Introduction to data science (for not yet scientists)
Data Science course developed at the Düsseldorf University of Applied Sciences (HSD) and the Centre for Digitalization and Digitality (ZDD).


## Create new environment for this course (recommended)
It is recommended to create a new environment for this course with many Python libraries that we will use in the Live Coding sessions. You can simply download the `environment.yml` file in this repository, or clone the repository using:
```
git clone https://github.com/florian-huber/data_science_course.git
```
Then, in the folder with the `environment.yml` file simply run:
```
conda env create -f environment.yml
```
This should create a Python 3.9 environment with the packages listed in the yaml-file.


## Build book using *Jupter Book*

The current book project is meant to be generated using [*Jupyter Book*](https://jupyterbook.org). Once installed run the following terminal command from the cloned folder:
```
jupyter-book build . 
```
