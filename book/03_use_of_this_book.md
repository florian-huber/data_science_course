# How to use this book (... if you ask us)

While there's no singular correct way to utilize a textbook, we're here  to provide some guidance on how we intended this resource to be used.  Plus, we'll throw in a few tips based on our years of experience in  teaching data science.

- Progress at your own speed. If certain concepts seem challenging, don't  rush. Invest some time in looking for supplementary material online  (e.g., tutorials, videos, forums, etc.) that can provide further  clarity.)
- Reading this book alone won't transform you into a data scientist. To  truly learn data science, you need to actively engage in coding and  working with real data sets. Observing code and nodding along saying,  "yeah, I got it" is not equivalent to having mastered it! We can't  stress this enough - the most prevalent pitfall many students succumb to is passive learning. The true test of your understanding comes when you can independently apply the skills, starting from scratch, not merely  copying, pasting, and executing someone else's code.
- While chatbots can serve as helpful data science assistants, they are  not a substitute for your active learning. We firmly believe that the  path to becoming a competent data scientist involves learning how to  solve challenges on your own. Relying on a chatbot for answers is akin  to copying solutions from another student or a forum. While this  approach may help you complete your exercises in the short run, it won't contribute much to your long-term learning and skill development.



## Skills you should have to work with this book

- Python programming basics (variables, basic data types, loops, functions, module imports)
  --> Can be learned here... here...here
- High school math skills (basics statistics, basic algebra)



## Open source libraries

In this book we make use of many great python libraries, all of which are freely available online thanks to a fantastic open source community that drives the Python ecosystem.

--> add citations for numpy, pandas, scipy, scitkit-learn etc.



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