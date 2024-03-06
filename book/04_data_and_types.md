# Data and Data Types

There are many different definitions for the term **data** [add refs]. Here's one of them, which will do for us to start with:

> Data ≈ values or findings obtained through observations, measurements, etc.

#### History of Data

A characteristic of data is that it must be measured or recorded. Hence, data is as old as the oldest human systems for recording data. One of the earliest remnants of such an endeavor is the Ishango bone, estimated to be around 20,000 years old {cite}`pletser_ishango_1999`. This artifact, displaying systematic notches grouped in blocks, resembles an ancient tally stick, hinting at our ancestral drive to count or record.

The very essence of data collection goes hand in hand with the birth of writing and symbolic representation. Interestingly, the oldest instances of these systems were not used to create elaborate letters, prose, or captivating stories. Instead, they were wielded for what may seem mundane today: collect and manage taxes and outstanding services. This fits to a saying that is usually linked to Benjamin Franklin: *"...in this world nothing can be said to be certain, except death and taxes"*.

While data has been collected and used for millennia, the term *"data"* itself is relatively nascent. Originating from the Latin word *datum*, which means "given", the English adoption of *data* is believed to have been in the 1640s. The evolution of the term underscores our ever-growing understanding and reliance on the structured representation of knowledge.

#### Data Types

Before we dive deeper into how to acquire and process data, we first need to know some fundamental terms and their distinctions. 

**Structured vs. Unstructured Data**

At the crux of data storage and management lie two primary categories: structured and unstructured data.

*Structured data* is organized into a defined schema or format. It's easy to search, manipulate, and analyze because of its systematic arrangement, often in rows and columns. Examples include relational databases and CSV files, but you can also just think of this as any data that you could meaningfully display in a table. 

Conversely, *unstructured data* doesn't simply fit into a table. Or, we could say that this data has no specific form or model. As an important consequence, such data is typically harder to classify and analyze using traditional methods. Text documents, videos, and social media posts are common examples of unstructured data.

**Feature vs. Data Points and the Dimensionality of Data**

When we speak of data, especially in tables, we refer to *features* (but sometimes also *variables* or *attributes*... this all depends on the domain or discipline people come from) and *data points*. Features are the distinct attributes or properties of the data set. In tabular data, these often appear as columns. For instance, in a table cataloging books, features might include "Title", "Author", and "Publication Year".

On the other hand, *data points* are individual pieces of information, often represented as rows in tabular data. For example, each book listed in the aforementioned table would be a data point.

The concept of dimensionality arises from the number of features. A table with three features is 3-dimensional, while one with 15 features is 15-dimensional. Understanding dimensionality is crucial, especially in domains like machine learning, where high-dimensionality can lead to challenges such as the "curse of dimensionality".

**Data vs. Metadata**

While *data* represents the core information we aim to analyze or utilize, *metadata* is the information about this data. It describes the data's context, quality, condition, origin, and other characteristics. If data is a book, metadata is the blurb on the back, providing insights about its content, author, and publication details.

**Categorical vs. Numerical Data**

*Data* can often be pigeonholed into categorical or numerical types.

*Categorical data* is data that can be divided into specific categories, but doesn't have any inherent order or hierarchy. For instance, the colors of a shirt (blue, red, green) are categorical.

*Numerical data*, as the name suggests, relates to numbers and can be further split into discrete (countable) and continuous (measurable) data. Age, height, and weight are all examples of numerical data.

**Scale Types: An Overview**

Delving deeper into data characterization, we encounter different scales that data can adhere to:

- *Nominal scale*: This is the most basic level, used for labeling variables without any quantitative value. It's the realm of categorical data, like gender or ethnicity.
- *Ordinal scale*: It denotes categories with a set order or rank. Though there's a hierarchy, the intervals between the ranks aren't uniformly defined. Examples include rating scales of "low", "medium", and "high".
- *Interval scale*: This is numerical data where the intervals between numbers are consistently uniform, but there isn't a true zero. Temperature, for example, is on an interval scale as 0°C doesn't signify a lack of temperature.
- *Ratio scale*: This scale boasts all the properties of the interval scale, but with a clear definition of zero. Length, weight, and age are examples of data on a ratio scale.

| Scale       | Level    | Possible Operations                                          | Typical Data Type | Example                                                      |
| ----------- | -------- | ------------------------------------------------------------ | ----------------- | ------------------------------------------------------------ |
| Categorical | Nominal  | Frequencies                                                  | string            | [red, yellow, blue]                                          |
| Categorical | Ordinal  | Median, Quantiles                                            | string            | [good, average, bad]                                         |
| Numerical   | Interval | Means, Variances, Addition, Subtraction                      | int, float        | Temperature in Celsius (5°C is **not** five times as warm as 1°C) |
| Numerical   | Ratio    | Means, Variances, Addition, Subtraction, Multiplication, Division | int, float        | Lengths, Sizes, Weights, Monetary amounts ...                |

#### Big Data

Working in data science there is really no way to avoid dealing with the challenges, the promises, or even the (many) definitions of **Big Data**. Since this is not our core concern in this book, I will simply stick to the very simple definition of saying 

> **Big Data** ≈ Data that is too large, too complex, or too volatile to be evaluated using manual and traditional data processing methods.

Still, what does this mean? And why is there no sharp definition of which data is "big data" and which is not? Well, in essence, there is no sharp boundary between big and "not big" data. Big makes us first think of the sheer size of the data, or **volume**, say number of Giga-/Terra-/Peta-bytes. This is, however, far too simple. Astrophysicists collecting super-high-resolution telescope pictures of the sky would probably never consider a dataset that fits on a USB stick to be *big* (high-resolution images take a lot of disk space!). But librarians or historians might have a very different view on what is big and what is not. To get a better intuition for such volumes: 6.5 million English Wikipedia articles require only 20GB but equate to about 3000 encyclopedia volumes. This easily makes this *big data*. And yet, ten high-resolution movies require the same storage but don't form a *big* dataset.

Beyond the volume-related discussions, there are other factors that also contribute to whether or not we consider data as *big data*, which here means: things that further complicate the handling of the data. This can, for instance, be the **variety** of data, but also the **velocity** by which the data needs to be processed or analyzed. Together those terms are called the **"3V's"** (Volume, Variety, Velocity) that contribute to data being considered *big data*. Over the years, people started to add to this list, so that we now also have 4V's or 5V's ... but I will leave this for you to research if you want to know more about these definitions.

If you still feel like you have no idea what big data actually means, feel free to just go ahead to the next chapters with a basic first intuition of: 

> Anything that can be done with basic Excel methods **is not Big Data**.

