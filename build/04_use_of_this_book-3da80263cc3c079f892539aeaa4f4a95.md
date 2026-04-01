# How to use this book (... if you ask us)

This textbook has been written to support your journey into data science as clearly and practically as possible. But like any book, its value depends on how you use it. The following suggestions will help you get the most out of it.

- **Progress at Your Own Speed**: 
  Data science is a broad field, and different topics will feel easier or harder depending on your background. If a concept seems difficult at first, take your time. Pause, revisit the section, and look for additional explanations elsewhere. The internet offers many excellent tutorials, videos, courses, and discussion forums on almost every topic covered in this book. The key is patience and persistence.
- **Learning by Doing**: 
  Simply reading about data science will not make you a data scientist. To really learn, you need to write code, run analyses, and work with data yourself.
  One of the most common mistakes students make is passive learning: reading through code, following an explanation, and thinking, *"yeah, I got it"*. But understanding an explanation is very different from being able to solve a problem on your own!  
  The real test of learning begins when you can apply a method independently: starting from scratch, making decisions yourself, and solving the small problems that inevitably come up along the way. For that reason, I strongly encourage you not just to read the examples in this book, but to run them, modify them, break them, and rebuild them.
- **Use technology as support, not as a substitute**: 
  While chatbots can serve as helpful data science assistants, they are not a substitute for your active learning. We firmly believe that the path to becoming a competent data scientist involves learning how to solve challenges on your own. Relying on a chatbot for answers is akin to copying solutions from another student or a forum. While this approach may help you complete your exercises in the short run, it won't contribute much to your long-term learning and skill development.



## Code is the easy part

The next paragraphs will be on code and programming. And for many students, in particular students without a strong computer science background, the coding parts often seems to be the main challenge in the beginning. So, just as a small warning before we talk Python: A very good data scientist for sure knows how to work with code. But that would not nearly be enough. You will later see, that many data science techniques, including very fancy ones, can often we executed with just a few lines of code. The real skill therefore will not be to be able to run all available techniques on any dataset you'll get. It is the ability to know *how to use* those methods, but also to know *when to use* them! When you analyze data it will often come down to **asking the right questions, and knowing which tools can help you answer them**.

But we will come to this many times again. For now, let's get started with the very technical parts.

## Skills you should already have before you start
This book is intended to be accessible, but it does assume some basic prior knowledge.

- **Python programming basics**: You should be familiar with variables, basic data types, loops, functions, and importing modules. If you are new to Python or want a refresher, good starting points include [Python.org's Beginner's Guide](https://docs.python.org/3/tutorial/index.html), [RealPython](https://realpython.com/), or [GeeksforGeeks Python Programming Language](https://www.geeksforgeeks.org/python-programming-language/).
- **Basic school-level mathematics**: A general understanding of algebra and basic statistics will be helpful, especially when it comes to understanding methods and their limitations.

You do not need an advanced background in mathematics, statistics, or computer science to work with this book. But you should be willing to engage actively with both code and quantitative reasoning.

## Why Python?

Python, over the years, has emerged as the lingua franca of data science. But why?

1. **A rich ecosystem of libraries**: Python offers powerful libraries such as NumPy, pandas, matplotlib, seaborn, and scikit-learn for numerical computing, data handling, visualization, and machine learning.
2. **Readable syntax**: Python is often easier to read and write than many other programming languages, which makes it especially suitable for beginners.
3. **Strong community support**: Because Python is so widely used, there are countless tutorials, examples, forums, and community resources available.
4. **Flexibility**: Python can be used for many different tasks, from quick scripts and data analysis to machine learning and web development.
5. **Wide adoption in academia and industry**: Python is used extensively in research, education, and industry, making it a practical language to learn.

Other languages and tools, such as R, Julia, or KNIME, also have important strengths. But Python’s combination of accessibility, flexibility, and ecosystem makes it an excellent choice for this book. All code examples in the book are therefore written in Python.

## Open source libraries

Python's prowess in data science can be attributed to its incredible libraries. These libraries, backed by a robust open-source community, are the backbone of various data operations:

- **NumPy**: Fundamental package for numerical computations in Python. [NumPy Documentation](https://numpy.org/doc/)
- **pandas**: Offers data structures and operations for manipulating numerical tables and time series. [pandas Documentation](https://pandas.pydata.org/docs/)
- **SciPy**: Builds on NumPy and provides a large number of functions that operate on NumPy arrays and are useful for different types of scientific and engineering applications. [SciPy Documentation](https://docs.scipy.org/doc/scipy/reference/)
- **scikit-learn**: Simple and efficient tools for data mining and data analysis. [scikit-learn Documentation](https://scikit-learn.org/stable/documentation.html)



## This Book is full of Code, and you Should Run It Yourself! 

This book is created using [Jupyter Book](https://jupyterbook.org/en/stable/intro.html)  {cite}`community_jupyter_2020` and the entire code to produce this book is freely available [on GitHub](https://github.com/florian-huber/data_science_course).

Every section of this book that contains code can be found as a *Jupyter Notebook*, so that you can go ahead and re-run the code, play with it, adapt it, expand it. To do so, we suggest two possible routes. You can **(1)** run the individual notebooks directly in your browser by clicking on the small rocket button on top which will open the provided notebook either in [Google Colab](https://colab.research.google.com/), or using [Binder](https://jupyter.org/binder).

Or, if you want to have full control and either know how to set up an environment or want to learn how to do this, you can choose open **(2)** to run all code locally on you own machine. For this we recommend setting up a new environment by following the steps below:

### Prerequisites

Before we begin, please ensure you have Anaconda or Miniconda installed on your machine. If you haven't already done so, you can download and install Anaconda from [here](https://www.anaconda.com/products/distribution). Anaconda is a free and open-source distribution of Python for scientific computing. It comes with conda, a package, dependency, and environment manager. Miniconda is a smaller, "minimal" version of Anaconda that includes only conda and Python.

### Step 1: Clone the Repository

The first step is to clone the repository for this course. This can be done by using the `git clone` command:

```bash
git clone https://github.com/florian-huber/data_science_course.git
```

This command will create a new directory named `data_science_course` in your current directory, and download the entire repository into that directory.

### Step 2: Navigate to the Repository

Next, navigate into the new `data_science_course` directory:

```bash
cd data_science_course
```

The `cd` command (which stands for "change directory") will move you into the directory that you specify after it.

### Step 3: Create a New Environment

Once you're in the `data_science_course` directory, you can create a new conda environment for this course. This can be done using the `conda env create` command, along with the `-f` flag to specify the file defining the environment:

```bash
conda env create -f environment.yml
```

This command will create a new conda environment named `data_science_course`, based on the specifications in the `environment.yml` file. The environment will include Python 3.9, along with a number of other Python packages that are used in this course.

### Step 4: Activate the New Environment

After the new environment has been created, you can activate it using the `conda activate` command:

```bash
conda activate data_science_course
```

Once the environment is activated, you can start working on the course materials. Remember, every time you want to work on the course, you should first activate the environment.

### Step 5: Updating the Environment

In case of updates to the `environment.yml` file, you can update your conda environment using the `conda env update` command:

```bash
conda env update -f environment.yml --prune
```

The `--prune` option causes conda to remove any dependencies that are no longer required from the environment.

With these steps, you should have everything set up and ready to start diving into the material for this data science course. 

**Happy data science coding!**