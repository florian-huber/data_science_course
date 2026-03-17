(ch_data_acquisition)=
# Data Acquisition – Where Do We Get Our Data?

If data science is about learning from data, then one of the first important questions is:

> **Where does the data actually come from?**

In many beginner examples (also most parts of this course) datasets seem to appear almost magically: neatly packaged, well documented, and ready to be loaded with a single line of code. In real projects, things are usually very different. Getting the data is often one of the hardest, most time-consuming, and most important parts of the entire process. 

This is worth emphasizing early on. A data science project does not begin with a machine-learning model, and usually not even with a table full of values. I often see students realize this only when they enter the "real world" and work on actual problems that have not yet been solved by some people on kaggle. It is absolutely not uncommon for a data science project to be 50-80% about getting, cleaning, processing the data!

A data science project can simply begin with a question, followed by the necessary efforts of finding or creating suitable data that can actually help answer that question.

## Before collecting data: what do we actually want to know?

Before starting any data collection, we should first pause and ask a few basic questions. What is the problem or question we want to investigate? What kind of information would actually help us answer it? What data would be useful, and what data would merely be interesting but not really relevant? Can we realistically obtain the data we need? And are we even allowed to collect and use it?

These questions may sound obvious, but they are easy to underestimate. A lot of bad data science starts with collecting data first and only later wondering what exactly that data was supposed to help with. If the question is vague, the data collection will often also be vague. And vague data is rarely a strong foundation for meaningful analysis.

## Common ways to get data

There is no single path to useful data. In practice, data can come from many different places, and the source often shapes what kind of analysis is possible later on.

One common route is to work with already existing **public datasets**. These can often be found on the websites of government agencies, research institutions, NGOs, or open-data platforms. Examples include census and demographic data, weather and climate records, economic indicators, public transport data, health statistics, or benchmark datasets for teaching and research. Platforms such as [Kaggle](https://www.kaggle.com/), [Zenodo](https://zenodo.org/), or [UCI](https://archive.ics.uci.edu/) make many such datasets easily accessible.

Public datasets are often a very convenient starting point, especially in teaching. But they should not be idealized. Just because data is publicly available does not automatically mean that it is complete, unbiased, well documented, up to date, or suitable for your specific question. Even open data needs to be approached critically.

A second important source is the web. A vast amount of potentially useful data is available online, from websites and digital platforms to online services and repositories. Sometimes this data can be accessed through an **API**, short for *Application Programming Interface*. An API provides a structured way to request data from a service, often in a much more stable and organized form than what is directly visible on a website. If an API exists, this is often the better option.

If no such interface is available, people sometimes turn to **web scraping**, meaning the automated extraction of information directly from websites. This can be useful, but it is often messy, fragile, and not always legally or ethically unproblematic. A script that works today may fail next week because the website changes. And even if scraping is technically possible, that does not always mean it is allowed or appropriate. So web data can be valuable, but it rarely comes for free.

Another major source is **internal organizational data**. Companies, schools, hospitals, public institutions, and universities often sit on large amounts of potentially useful data. This might include process logs, customer records, administrative data, internal surveys, transaction histories, or communication patterns. Such data can be highly relevant because it is often closely linked to real processes and real decisions. At the same time, access is usually restricted, and rightly so. Internal data often comes with privacy concerns, legal restrictions, confidentiality issues, and documentation problems. In other words: the dataset may exist, but that does not mean you can simply use it.

We can also obtain data from **scientific research**. In many disciplines, it is becoming increasingly common to publish data together with research papers, or at least make it available upon request. This is part of a broader movement toward open science and reproducible research. Scientific datasets can be especially valuable because they are often collected systematically and accompanied by at least some form of documentation. On the other hand, they may require substantial domain knowledge to understand properly. Knowing what was measured is not always enough; we may also need to understand how, under which conditions, and with which limitations.

There are also cases in which data is simply **bought**. Commercial datasets can be useful if collecting the data independently would be too expensive, too slow, or practically impossible. But buying data raises its own questions. How was it collected? What exactly are you paying for? What are you allowed to do with it? And how good is its quality? Paying for a dataset does not automatically make it good.

Finally, and often very importantly, we can **create our own data**. This can happen through surveys, interviews, experiments, observations, sensors, manual annotations, or logging systems that we build ourselves. Collecting our own data has a major advantage: we can tailor it much more closely to the actual question we care about. But it also means that we become responsible for the design, quality, ethics, documentation, and limitations of the resulting dataset from the very beginning.

## Not all data is equally useful

Getting data is one thing. Getting the *right* data is another.

A dataset can be large and still be useless for your task. It can look clean and professional and still be biased or misleading. It can be easy to access and still be legally unusable. It can contain exactly the wrong variables for the question you actually want to answer.

This is why data acquisition matters so much. It is not just about obtaining *some* data. It is about obtaining data that is relevant, trustworthy, and suitable for the problem at hand. Probably the largest misconception I often see in data science and machine learning is that it is all about the tools and techniques we use to work with the data. But experience tells otherwise. Data science projects stand and fall with the quality (and quantity) of the available data. It is therefore a common understanding in the field that poor data, or data that is poorly suited for a specific task, cannot magically be turned into excellent results. This is commonly summarized in a simple phrase:

>*Garbage in, garbage out!* [^crap_in_crap_out]:

To judge whether data is suitable for a task, it is usually not enough to ask only about its quality and quantity. It is also a matter of trust and understanding. Do we know where the data came from? Do we understand how it was generated? Under what conditions was it recorded, and for which original purpose? Only if we have at least a first understanding of the data and its origin can we begin to ask more critical questions: Are important groups missing? Are there blind spots? Are there systematic biases? And ultimately: does this data actually help answer our question?

If this sounds a bit too obvious, you may be surprised how often people encounter the following kind of situation in practice: a student starts an internship, is given a business problem to solve, and is reassured with something like, *"Don’t worry, we have huge amounts of data for that."*. That sounds promising, until it turns out that the available data is, for example, only a collection of website clicks and purchase logs, while the actual goal is to understand **why** customers stop using a service. The company may indeed have millions of rows of data, but none of them contains the crucial information: the reasons, frustrations, or external circumstances that led customers to leave. In such a case, the problem is not a lack of data. It is a lack of the *right* data.

And finally, we also have to consider legal, ethical, and practical restrictions on how data may be used (see {numref}`ch_ethics`). Having access to data is not the same as being allowed to use it for every purpose we might have in mind.

These questions are not side issues. They shape everything that comes afterwards.

## A dataset is never just “found”

A very important insight is that data is not simply out there waiting for us in neutral form. Data is always collected, selected, recorded, structured, and stored in some way {cite}`DataFeminism2020,kitchin_data_2014, gitelman_raw_2013`. This means that data already reflects decisions. Someone decided what to measure, whom to include, when to record, which categories to use, and what to leave out. And often the data was originally collected for a purpose that may be quite different from the one we have in mind now.

This is one reason why ethical questions arise so early in data science. The ethical dimension does not begin only when a model makes a prediction. It already begins when data is collected {numref}`ch_ethics`.

## A student-focused example: building our own dataset

Let us now make this more concrete.

Suppose we want to learn more about the students in this course or at this university. Not in a creepy or overly intrusive way, but in a genuinely useful one. For example, we might want to get a better sense of who is in the room, what backgrounds and interests people bring with them, and maybe even help students find like-minded others to team up with, study with, or simply get to know.

This is already a real data acquisition problem. An it is clear from the start, that we do not yet have this data, nor can we simply get it somewhere in the internet. In a way, as data scientists we could now lean back and just cancel the job: no data, so no need for a data scientist. Too bad, you are not yet a data scientist (no offense, but why would follow this course if you were...). And personally, I believe that you should not only learn about ways to *work* with the data, but also get a sense for what *collecting* data entails. This will later help you to better understand what could go wrong and what to be aware of. 

**So, let's get our own data!**

Getting some data from students in this course shouldn't be too hard, right? We can simply build a questionaire and collect the answers. Wait, but what questions should we take? And how can we make sure enough people give (truthful) answers?

Before writing down any questions, we should first clarify the goal. Are we mainly interested in prior experience with programming and statistics? Do we want to know what topics students find exciting? Do we want to support team building? Do we want to find out where people might need additional support in the course? These are quite different goals, and they would lead to different questionnaires.

If the main aim is to help students get to know each other and possibly find suitable teammates, then useful questions might concern study background, current semester, prior experience with Python, comfort with statistics, areas of interest in data science, preferred project topics, or working style. We might also ask more open questions such as why the student chose the course, what they hope to learn, or what kind of teammate they would enjoy working with.

Notice that these are all questions with a purpose. That is important. A good questionnaire is not just a list of things that might be interesting to know. It should be guided by a clear idea of why the information is being collected and how it may later be used.

At the same time, some questions should not be asked lightly. Just because a question is interesting does not mean it is appropriate. Questions about political views, religion, health, mental health, sexuality, financial situation, or family background can be highly sensitive and should generally be avoided unless there is a strong reason and a careful ethical design behind the whole data collection process. Even questions that seem harmless can become problematic if students do not understand why they are being asked, whether participation is voluntary, and who will have access to the answers.

So even in a small classroom questionnaire, ethics matters.

## Qualitative and quantitative research

When people first hear the word *data*, they often think of numbers. But some of the most useful data we can collect is not numerical at all.

Suppose we ask students: “Why did you choose this course?”, “What are you hoping to learn?”, or “What kind of teammate would you like to work with?” These questions will usually not produce numbers, but short text answers. And that brings us into the world of **qualitative research**.

Qualitative research is concerned with meanings, experiences, motivations, perspectives, and interpretations. Instead of mainly asking “how much?” or “how many?”, it often asks questions like “why?”, “how?”, or “in what way?”. Typical qualitative data includes interview transcripts, field notes, observation notes, written reflections, or open-ended survey answers. This kind of data can be very valuable, especially when we do not yet know the important categories in advance, or when we want to understand how people think about a topic in their own words {cite}`creswell_research_2017,groves_survey_2011`.

At the same time, a lot of research in practice is **quantitative research**. Here, the focus is more strongly on structured and comparable measurements. Quantitative research often asks questions such as "how many?", "how often?", "how strongly?", or "is there a measurable relationship between two variables". The resulting data is usually numerical, or at least organized in a way that can be counted and statistically analyzed. Typical examples include test scores, age, income, reaction times, rating scales, or the number of hours students spend studying each week {cite}`creswell_research_2017,groves_survey_2011`..

Both approaches can be useful, but they are good for somewhat different purposes. Qualitative research is especially helpful when we want to explore a topic, understand experiences in more depth, or discover themes that we had not thought about in advance. Quantitative research is especially helpful when we want to compare groups, summarize patterns across many observations, or test whether certain relationships appear in the data.

In practice, however, it is often not an either-or situation. A questionnaire, for example, can easily contain both kinds of questions. We might ask students to rate their confidence in Python on a scale from 1 to 5, which gives us quantitative data. But we might also ask what they hope to learn in the course, which gives us qualitative data. The first type of question is easier to summarize numerically. The second often gives richer answers and may reveal things that we would not have captured with a fixed scale alone.

For this reason, many real studies combine both perspectives. A few well-chosen rating-scale questions can give a structured overview, while a few open questions can add context, nuance, and unexpected insights. Even if this course will mainly focus on working with structured, quantitative data, it is important to keep in mind that not all useful data comes in numerical form. Sometimes the most interesting answers begin as words.


## Designing a good student questionnaire

If we want to create a useful dataset about the students in a course, the questionnaire should be short enough that people will actually complete it thoughtfully, clear enough that the questions are easy to understand, and focused enough that every question has a reason to be there.

It should also be transparent. Students should know why the data is being collected, how it will be used, whether participation is voluntary, whether answers are anonymous, and who will be allowed to see the results. That may sound formal, but it is actually just basic respect.

There is also a very practical side to this. If we want to analyze the questionnaire later, we should formulate the questions in a way that leads to interpretable answers. Asking "What are your interests?" may be too broad and lead to a chaotic range of responses. Asking students to choose up to three topics from a list and then optionally explain their choice in one sentence may produce answers that are both easier to analyze and still meaningful.

So even a small questionnaire contains many design decisions. What may look like a simple form is in fact already a small research instrument.

## Mini-exercise: design a questionnaire for your own cohort

Imagine we want to create a small dataset about the students in this course. The goal is not surveillance. The goal is to help students get to know each other better, discover shared interests, and possibly find suitable teammates for future exercises or projects.

Work in small groups and design a short questionnaire for this purpose. Try to agree on a clear goal first: what exactly should the questionnaire help with? Then come up with around six to ten questions that would actually be useful for that goal.

As you design the questionnaire, think carefully about what kind of answers you want. Which questions should be multiple choice? Which ones should use a rating scale? Which ones should be open-ended? Which questions might be too personal, unnecessary, or ethically questionable? And how would you explain the purpose of the questionnaire to students so that they can make an informed decision about whether they want to participate?

Once the groups are done, compare your questionnaires. Which questions appeared in many groups? Which ones were controversial? Which designs seem most useful, respectful, and realistic?

## Continue reading!

Collecting personal data via surveys or questionaires is an huge field of research and a core competence in many research domains.

Some very established references on those matters are:
- {cite}`groves_survey_2011`
- {cite}`creswell_research_2017`
- {cite}`dillman_internet_2014`

[^crap_in_crap_out]: Depending on the persons origin, I also heart this as "Crap in, crap out", or "Rubbish in, rubbish out". Who said if first, is not known (see[wikipedia entry on that saying](https://en.wikipedia.org/wiki/Garbage_in,_garbage_out)).