# Data Acquisition & Preparation

The foundational pillar of any data science project lies in the data itself. Sounds obvious, yet in practice, many aspiring data scientists will still be surprised by **how much the quality and quantity of data matters for the success of a data science project**. Without pertinent and high-quality data, even the most sophisticated algorithms will fall short of producing meaningful results. This chapter aims at building a first intuition about the process of data acquisition and preparation, elucidating best practices to ensure your data science journey is built on solid ground. I am fairly certain that many of the parts of the data science pipeline that we will see in the following chapters will appear much fancier and more exciting. But ultimately, it is often times the data acquisition, preparation, and processing part that makes the largest impact. 

## Data Acquisition

Before plunging into data collection, it's imperative to ask: What's the problem at hand? What questions to we want to answer? And, what kind of data do we need for this?

### Key Considerations:

1. **Type of Data Needed**: What kind of information will help address the problem? Is it quantitative, qualitative, temporal, or spatial?
2. **Data Quality and Quantity**: Do the data offer enough breadth and depth to draw meaningful conclusions? Are there gaps or inconsistencies that might pose challenges?
3. **Data Sources**: Is the data readily available? Is it accessible? And can we trust the source?
4. **Usage Restrictions**: Are there any commercial, legal, or privacy restrictions tied to the data? This determines if we can work with the data at all and if so, under what conditions.

### Common Data Sources:

- **The Internet I**: A vast ocean of data. Public datasets are easily accessible and can be sourced from governmental agencies, NGOs, or platforms like [Kaggle](https://www.kaggle.com/), [Zenodo](https://zenodo.org/), and [UCI](https://archive.ics.uci.edu/).
- **The Internet II**: *Web scraping* is akin to a treasure hunt, extracting valuable data directly from web pages, given that you respect the legal and ethical boundaries.
  Web scraping means the automated extraction of data from the internet. While Python generally works fine for doing web scraping, the process itself is inherently **messy**! Whenever you write a script to extract data from a certain website, you can be nearly sure that the same script won't work a year from now. Or, if you are unlucky, it might not even work tomorrow.
  But if you are lucky, someone else has gone through most of the pain for you and provides you with a proper *API*, maybe even a Python library (for instance the [Wikipedia API](https://github.com/martin-majlis/Wikipedia-API)).
- **Internal Corporate Data**: Picture a gold mine that a company sits upon; these are years' worth of data that can unearth invaluable insights if analyzed correctly. Though if it is that promising, you probably will need a few lucky coincidences to get your hands on this piece of data ...
- **Academic Data**: Scientifically collected and often meticulously maintained, these datasets can be found accompanying research papers. In many scientific disciplines it is becoming more and more common for authors to now only present and discuss their findings, but also to provide the data and/or the code used to extract those findings from the data (often termed: Open Science).
- **Data Upon Request**: Sometimes, just asking can open doors. Organizations might share data if approached correctly and for a worthy cause.
- **Commercial Datasets**: There are instances when investing in a dataset can prove to be more cost-effective than collecting data from scratch.

Don't let the typical course or tutorial situation trick you. In reality, you will rarely be in the comfortable position of receiving a large, high-quality dataset in an easy-to-import and easy-to-understand format. The most exciting data science projects usually do not come with a clean, ready-to-be-used csv file and well-documented metadata. 

Often, the collection of data can be a major (and time-consuming!) part of the project itself. It can even happen that we need to reconsider some of our initial targets and strategies if we do not manage to collect the data as expected. 

Once we do hold the data in our hands (well, rather on a disk or cloud drive), we further need to make sure that the data is technically, legally, or quality-wise suitable for what we plan to do with the data in the following phases. 

Once the data is in your hands, several pivotal steps ensure its quality and relevance:

- **Data Format**: Ensuring that the data is in a readable and workable format is paramount. Do you need to develop a custom parser, or can off-the-shelf software be used for ingestion?
- **Source Credibility**: If you have ever tried to collect data yourself, you will know that not all data is reliable. The credibility of the data source can significantly impact the reliability of your findings.
- **Data Processing Knowledge**: A thorough understanding of how the data has been previously processed can save you from potential pitfalls. Valuable insights can often be gleaned from data processing logs or accompanying documentation.
- **Legal issues:** Having data is not the same as *being allowed to use it*. Things like copyrights or privacy issues might render the data unfit for our goals.

### **Mini-Exercise: Hypothetical Scenario**

Imagine you are tasked with evaluating the state of digitization in schools in your region.

**Objective**: Assess the current level of digital infrastructure and its utilization in schools.

**Prompt**: Spend a few minutes brainstorming:

1. What kind of data might you need?
2. Where could you potentially source this data?
3. Are there potential roadblocks or challenges in procuring or using this data?
