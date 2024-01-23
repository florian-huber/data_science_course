# How to use this book (... if you ask us)

This textbook has been crafted with attention to detail to facilitate your journey into data science. However, the essence of its usefulness lies in how you engage with its content. Here's some advice to optimize your learning experience:

- **Progress at Your Own Speed**: Data science is a vast field, and everyone has their own pace. If you find certain concepts daunting, pause and seek additional resources. The internet is full of tutorials, videos, courses, and forums on practically all aspects that we cover in this book. The key is patience and persistence.
- **Learning by Doing**: Reading this book alone won't transform you into a data scientist. To truly learn data science, you need to actively engage in coding and working with real data sets. Observing code and nodding along saying, "yeah, I got it" is usually very away from having mastered it! We can't stress this enough - the most prevalent pitfall many students succumb to is passive learning! The true test of your understanding comes when you can independently apply the skills, starting from scratch, not merely copying, pasting, and executing someone else's code.
- **Lean on Tech, But Don't Rely on It**: While chatbots can serve as helpful data science assistants, they are not a substitute for your active learning. We firmly believe that the path to becoming a competent data scientist involves learning how to solve challenges on your own. Relying on a chatbot for answers is akin to copying solutions from another student or a forum. While this approach may help you complete your exercises in the short run, it won't contribute much to your long-term learning and skill development.



## Skills you should have to work with this book

- **Python Programming Basics**: Understanding of variables, fundamental data types, loops, functions, and module imports are essential. If you're new to Python or need a refresher, consider resources like [Python.org's Beginner's Guide](https://docs.python.org/3/tutorial/index.html), [RealPython](https://realpython.com/), or [GeeksforGeeks Python Programming Language](https://www.geeksforgeeks.org/python-programming-language/).
- At least **High School Math Skills**: Basic knowledge of statistics and algebra will serve you well, for instance to better understand the methods and their caveats.



## Why Python?

Python, over the years, has emerged as the lingua franca of data science. But why?

1. **Versatile Libraries**: Python boasts an array of libraries, such as NumPy, pandas, and scikit-learn, specifically tailored for data science tasks.
2. **Community Support**: The vast Python community ensures regular updates, myriad tutorials, and instant help on forums.
3. **Intuitive Syntax**: Python's clear and readable syntax makes it perfect for beginners.
4. **Flexibility**: Python seamlessly integrates with other languages, making it ideal for diverse tasks.
5. **Industry Adoption**: Major tech companies use Python, ensuring ample job opportunities.

While languages like R and tools like KNIME have their strengths, Python's holistic ecosystem and adaptability make it the preferred choice for many. All code examples in this book will be written in Python.

## Open source libraries

Python's prowess in data science can be attributed to its incredible libraries. These libraries, backed by a robust open-source community, are the backbone of various data operations:

- **NumPy**: Fundamental package for numerical computations in Python. [NumPy Documentation](https://numpy.org/doc/)
- **pandas**: Offers data structures and operations for manipulating numerical tables and time series. [pandas Documentation](https://pandas.pydata.org/docs/)
- **SciPy**: Builds on NumPy and provides a large number of functions that operate on NumPy arrays and are useful for different types of scientific and engineering applications. [SciPy Documentation](https://docs.scipy.org/doc/scipy/reference/)
- **scikit-learn**: Simple and efficient tools for data mining and data analysis. [scikit-learn Documentation](https://scikit-learn.org/stable/documentation.html)



## Setting Up Your Environment

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

With these steps, you should have everything set up and ready to start diving into the material for this data science course. Happy data science coding!