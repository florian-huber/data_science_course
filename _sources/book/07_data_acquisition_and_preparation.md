# Data Acquisition & Preparation

The foundational pillar of any data science project lies in the data itself. Sounds obvious, yet in practice, many aspiring data scientists will still be surprised by **how much the quality and quantity of data matters for the success of a data science project**. Without pertinent and high-quality data, even the most sophisticated algorithms will fall short of producing meaningful results. This chapter aims at building a first intuition about the process of data acquisition and preparation, elucidating best practices to ensure your data science journey is built on solid ground.

## Data Acquisition

Before plunging into data collection, it's imperative to ask: What's the problem at hand? What kind of data do we need to address it?

### Key Considerations:

1. **Type of Data Needed**: What kind of information will help address the problem? Is it quantitative, qualitative, temporal, or spatial?
2. **Data Quality and Quantity**: Do the data offer enough breadth and depth to draw meaningful conclusions? Are there gaps or inconsistencies that might pose challenges?
3. **Data Sources**: Is the data readily available? If not, where can one procure it?
4. **Usage Restrictions**: Are there any commercial or privacy restrictions tied to the data?

### Common Data Sources:

- **The Internet I**: A vast ocean of data. Public datasets are easily accessible and can be sourced from governmental agencies, NGOs, or platforms like [Kaggle](https://www.kaggle.com/), [Zenodo](https://zenodo.org/), and [UCI](https://archive.ics.uci.edu/).
- **The Internet II**: Web scraping is akin to a treasure hunt, extracting valuable data directly from web pages, given that you respect the legal and ethical boundaries.
- **Internal Corporate Data**: Picture a gold mine that a company sits upon; these are years' worth of data that can unearth invaluable insights if analyzed correctly.
- **Academic Data**: Scientifically collected and often meticulously maintained, these datasets can be found accompanying research papers. In many scientific disciplines it is becoming more and more common for authors to now only present and discuss their findings, but also to provide the data and/or the code used to extract those findings from the data (often termed: Open Science).
- **Data Upon Request**: Sometimes, just asking can open doors. Organizations might share data if approached correctly and for a worthy cause.
- **Commercial Datasets**: There are instances when investing in a dataset can prove to be more cost-effective than collecting data from scratch.

In some data science projects, we will start with an already prepared dataset, while in other projects, the collection of data can be a major (and time-consuming!) part of the project itself. It can even happen that we need to reconsider some of our initial targets and strategies if we do not manage to collect the data as expected. 

Once we do hold the data in our hands (well, rather on a disk or cloud drive), we further need to make sure that the data is technically, legally, or quality-wise suitable for what we plan to do with the data in the following phases. 

Once the data is in your hands, several pivotal steps ensure its quality and relevance:

- **Data Format**: Ensuring that the data is in a readable and workable format is paramount. Do you need to develop a custom parser, or can off-the-shelf software be used for ingestion?
- **Source Credibility**: If you have ever tried to collect data yourself, you will know that not all data is reliable. The credibility of the data source can significantly impact the reliability of your findings.
- **Data Processing Knowledge**: A thorough understanding of how the data has been previously processed can save you from potential pitfalls. Valuable insights can often be gleaned from data processing logs or accompanying documentation.
- **Legal issues:** Having data is not the same as *being allowed to use it*. Things like copyrights or privacy issues might render the data unfit for our goals.

### Remember: Crap in, Crap out!

Data is the bedrock of all subsequent data science operations. The notion that advanced algorithms can compensate for shoddy data is a common misconception. It's pivotal to invest ample time in sourcing and assessing data. The quality of data often becomes the deciding factor between the success and failure of a data science project.

### **Mini-Exercise: Hypothetical Scenario**

Imagine you are tasked with evaluating the state of digitization in schools in your region.

**Objective**: Assess the current level of digital infrastructure and its utilization in schools.

**Prompt**: Spend a few minutes brainstorming:

1. What kind of data might you need?
2. Where could you potentially source this data?
3. Are there potential roadblocks or challenges in procuring or using this data?

## Data Cleaning

Raw data, more often than not, is messy; it requires refinement to reveal its true value. This refinement process is what we term as "data cleaning". In this section, some of the most common data cleaning steps will be mentioned; steps which are fairly general across many different data types and sources. In actual practice, however, a lot of the more complex data cleaning requires a certain understanding - or *domain knowledge* - of the data. This is either acquired over time, when you work a lot with similar data and tasks; or it is distilled from a close collaboration with domain experts. Whenever you are not sure what the data in front of you actually means, and you hence are not sure what you may or may not do to the data, better invest time to build a deeper understanding of the data and/or ask someone with more experience on this type of data. 

Here are a few examples: If you work with audio data but don't know that decibel is measured on a logarithmic scale, you might unintentionally run into serious trouble. Or, if you get colorful medical images but don't realize that the color scale is just a color scale applied to monochromatic images, your data handling and later conclusions might not make it look like you know what you are doing... 

### Dealing with Missing Values:

Missing data is a common issue many data scientists face. While the gaps can manifest in varied forms such as NaN, "999", "N/A", None, and "", a standardized approach often involves representing these uniformly as `NaN` (hint: Python libraries such as `Pandas` or `numpy` have their own NaN data types!).

### Typical Challenges:

- **Duplicates**: Data can have repeated or conflicting entries.
- **Inconsistent Nomenclature**: Consistency in naming conventions can save hours of data wrangling later on. A classic example being different formats of names. "First Name Last Name" versus "Last Name, First Name".
- **Data Types**: Ensuring that numeric values aren't masquerading as strings can prevent potential analytical blunders (e.g., "12.5" instead of 12.5).
- **Decimal Delimiters**: Confusion between comma and dot can change data meaning, e.g., 12,010 becoming 12.01.

## Combining datasets

Unlike in most tutorial or course situations, in data science reality we rarely start by simply importing a single data file. Often, we will receive multiple files with different features and/or datapoints. In such cases, we usually want to combine the required parts of the data. This is a common operation in data science which is sometimes refered to as `merging` in aggreement with respective SQL operations.

At first, this seems to a be a rather simple operations. In practice, however, this is often surprisingly complicated and critical. If merging is not done correctly, we might either lose data or create incorrect entries.

```{figure} ../images/fig_data_merging_types.png
:name: fig_data_merging01

There are different type of merging data. Which one to use is best decided based on the data we have at hand and the types of operations we plan to run with the resulting data. Here are three of the most common types of merges: inner, left, and outer merges.
```

Figure ({numref}`fig_data_merging01`) shows some common merging types. More information on different ways to combine data using pandas can be found in the [pandas documentation on merging](https://pandas.pydata.org/pandas-docs/stable/user_guide/merging.html). 



## Further Cleaning Steps:

- **Unit Conversion**: Ensuring data is in consistent units.
- **Data Standardization**: This can be done via Min-Max scaling (often termed "normalization") or, frequently more effective, by ensuring data has a mean of 0 and a standard deviation of 1.
- **Non-linear Transformations**: Sometimes, linear thinking won't do. Transformations like logarithms can provide new perspectives on data.

In essence, data acquisition and preparation are the unsung heroes of a successful data science endeavor. By ensuring the foundation is robust and the raw materials are of top quality, you set the stage for analytical brilliance.

From my own experience: It is not uncommon that 80% of the work in a data science project goes into the data acquisition and cleaning.