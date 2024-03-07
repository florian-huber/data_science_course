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

*Data* in the realm of analysis can be classified into two main types: categorical and numerical.

*Categorical data* refers to data that falls into distinct groups or categories without any natural order or ranking among them. These categories are defined by  qualitative characteristics that describe or identify traits or  attributes. For example, the color of a shirt—whether it is blue, red,  or green—represents categorical data.

*Numerical data*, as the name suggests, encompasses data represented by numbers, which can be further  categorized into two subtypes: discrete and continuous. Discrete data  are countable quantities like the number of books on a shelf, while  continuous data involve measurements and can represent any value within a range, such as the height of a person or the weight of an object.

**Understanding Data Scales**

A deeper exploration into data reveals various scales on which it can be measured:

- **Nominal Scale**: This scale is used for categorizing data without implying any order. It's applicable to categorical data where the emphasis is on distinguishing between items based on names or labels, such as gender, ethnicity, or eye color.
- **Ordinal Scale**: Here, data is still categorical but with an inherent order or ranking among the categories. However, the differences between these ranks are not equal or standardized. A common example would be a rating system (e.g., poor, fair, good, excellent) where the scale implies order but not the magnitude of difference between adjacent rankings.
- **Interval Scale**: This scale applies to numerical data that has equal intervals between values but no true zero point, making ratios meaningless. Temperature measured in Celsius is a classic example, where the difference between 10°C and 20°C is the same as between 20°C and 30°C, but 0°C does not denote an absence of temperature. As a consequence, 5°C is **not** five times as warm as 1°C.
- **Ratio Scale**: Ratio scales are similar to interval scales in that they feature equal spacing between values but also include a true zero point, allowing for meaningful ratios. Examples include measurements of length, weight, and age.

### 

| Scale Type | Characteristics                               | Data Type   | Operations                                      | Examples                          |
| ---------- | --------------------------------------------- | ----------- | ----------------------------------------------- | --------------------------------- |
| Nominal    | Categories without order                      | Categorical | Classification, Mode                            | Colors, Gender                    |
| Ordinal    | Ordered categories, unequal intervals         | Categorical | Sorting, Median, Percentiles                    | Ratings (poor, fair, good)        |
| Interval   | Equal intervals, no true zero                 | Numerical   | Addition, Subtraction, Mean, Standard Deviation | Temperature (Celsius, Fahrenheit) |
| Ratio      | Equal intervals, true zero, meaningful ratios | Numerical   | All arithmetic operations                       | Height, Weight, Age, Income       |

#### Big Data

Working in data science there is really no way to avoid dealing with the challenges, the promises, or even the (many) definitions of **Big Data**. Since this is not our core concern in this book, I will simply stick to the very simple definition of saying 

> **Big Data** ≈ Data that is too large, too complex, or too volatile to be evaluated using manual and traditional data processing methods.

Still, what does this mean? And why is there no sharp definition of which data is "big data" and which is not? Well, in essence, there is no sharp boundary between big and "not big" data. Big makes us first think of the sheer size of the data, or **volume**, say number of Giga-/Terra-/Peta-bytes. This is, however, far too simple. Astrophysicists collecting super-high-resolution telescope pictures of the sky would probably never consider a dataset that fits on a USB stick to be *big* (high-resolution images take a lot of disk space!). But librarians or historians might have a very different view on what is big and what is not. To get a better intuition for such volumes: 6.5 million English Wikipedia articles require only 20GB but equate to about 3000 encyclopedia volumes. This easily makes this *big data*. And yet, ten high-resolution movies require the same storage but don't form a *big* dataset.

Beyond the volume-related discussions, there are other factors that also contribute to whether or not we consider data as *big data*, which here means: things that further complicate the handling of the data. This can, for instance, be the **variety** of data, but also the **velocity** by which the data needs to be processed or analyzed. Together those terms are called the **"3V's"** (Volume, Variety, Velocity) that contribute to data being considered *big data*. Over the years, people started to add to this list, so that we now also have 4V's or 5V's ... but I will leave this for you to research if you want to know more about these definitions.

If you still feel like you have no idea what big data actually means, feel free to just go ahead to the next chapters with a basic first intuition of: 

> Anything that can be done with basic Excel methods **is not Big Data**.

