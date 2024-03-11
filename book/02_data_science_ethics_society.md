# Data Science, Ethics, and Society

In an increasingly data-driven world, the role of data science extends beyond pure analysis and prediction. The use of data and algorithms is intimately entwined with ethical considerations and societal implications. The power of data science to influence and shape our world is vast, and, as the Spider-Man quote goes: *"with great power comes great responsibility"* ([see wikipedia](https://en.wikipedia.org/wiki/With_great_power_comes_great_responsibility)). 

It is very easy to agree on the necessity of ethical considerations in cases that directly touch life and death questions, such as the use of algorithms for medical diagnosis or autonomous transport. But ethics is not just about immediate life and death situations. In fact, most data science tasks bring ethical questions and societal implications, be it analyzing online user behavior, studying internal corporate processes, evaluating political campaigns, or communicating scientific content — all tasks that are more and more relying on data science techniques (to name just a few). 

Let's start with something that might at first appear to come with rather little ethical difficulties: Advertisement!
After all, what does it really matter if you propose a website user a red or a green pair of shoes?

### Let's look at some examples!

#### Targeted Advertisement - good, bad, neutral?

Even before the digital revolution, targeted advertising was a commonly used strategy. Businesses would use basic demographic information, such as age, gender, and location, to tailor their messages to specific audiences. However, with the advent of the internet and the surge in digital data, the face of targeted advertising has transformed completely. Today's targeted ads are not just influenced by basic personal features, but are significantly shaped by individual online behaviors, including search histories, website visits, and social media interactions {numref}`fig_advertise01`. This evolution has ushered in a new era of personalized advertising, elevating its precision and relevance to unprecedented levels.



```{figure} ../images/fig_targeted_advertisement_01.png
:name: fig_advertise01

Targeted advertisement can nowadays use much more data and information on a potential customer (here: Alice) when compared to pre-digital times.
```

You may already be feeling a touch of unease. Is it truly beneficial for companies or other organizations to have access to all this data? On the flip side, consider this: isn't it a **win/win situation**? Companies can reach a much more suitable audience, and individuals receive advertisements tailored to their profiles and interests. Take, for example, Alice ({numref}`fig_advertise02`). Because of her age (neither too young nor too old), location (within 2 hours of the festival venue), and interests (many likes for Hip-Hop bands), she receives an advertisement for a Hip-Hop festival. This offer is a clear match for her. However, Alice wouldn't get a mail catalog for a package tour operator catering to a different customer profile—typically older and, let's say, less concerned about the carbon emissions of their tours. That's a plus for Alice. And a plus for both companies, isn't it?

```{figure} ../images/fig_targeted_advertisement_02.png
:name: fig_advertise02

In many cases, target advertisement does little harm. It might even seem like a win/win situation at first.
```

However, things get a bit more complex when we consider the marketing of more sensitive products. Let's take the example of maternity wear. Suppose a company uses data science to detect early signs of pregnancy, like changes in online shopping behavior. They might then start sending ads for maternity clothes. This could potentially lead to uncomfortable or even harmful situations ({numref}`fig_advertise03`). 

For instance, what if the individual hasn't yet told their family or friends about the pregnancy? [^target-story] Or, in a more distressing scenario, what if the pregnancy is unwanted, or complications arise? In such cases, receiving maternity ads could cause emotional distress. And it's not limited to maternity products; this applies to any sensitive product or service.

```{figure} ../images/fig_targeted_advertisement_03.png
:name: fig_advertise03

But even advertisements can quickly turn into ethically much more complicated matters. 
```

And what if the advertisement is not a product in a classical sense, but a high-paying job?

### From Consumer Preferences to Career Opportunities

The leap from targeted product advertisements to job ads might seem minor at first glance, but it signifies a profound shift in impact.  While targeted ads for products and services primarily affect consumer choices and privacy, targeted job advertisements can shape an individual's career trajectory and financial stability. Consider a study using AdFisher, an automated tool designed to scrutinize the interplay between user behavior, Google ads, and the Ad Settings that Google provides for user control and transparency {cite}`datta2015automated`. During the course of the research, it was discovered that modifying the user profile to 'female' resulted in fewer advertisements for high-paying jobs compared to when it was set to 'male' ({numref}`fig_advertise04`). Such discrepancies underscore the potential for digital platforms to  perpetuate or even exacerbate societal inequalities, inadvertently gatekeeping opportunities based on demographics rather than merit.

This issue of algorithmic bias in job advertising is not an isolated phenomenon. It echoes a broader concern about how data science applications can affect fundamental aspects of people's lives, including their professional opportunities. When algorithms trained on historical data inherit past biases, they risk perpetuating those biases, thus highlighting the ethical imperative for transparency, fairness, and accountability in their development and deployment.

```{figure} ../images/fig_targeted_advertisement_04.png
:name: fig_advertise04

Advertisements can have potentially large impacts... for instance, if we talk about job advertisements. 
```

A similar study examined Facebook's ad delivery process, revealing another layer of potential algorithmic discrimination {cite}`Ali_2019`. The research indicated that, even when advertisers aim for inclusivity in their targeting parameters, the optimization processes employed by Facebook could inadvertently skew ad delivery along gender and racial lines. This was particularly evident in advertisements for employment and housing opportunities. As such, these findings underline the importance of scrutinizing not just the algorithms behind data analytics but also the optimization mechanisms of digital platforms themselves, further emphasizing the role data scientists must play in promoting fairness and preventing discrimination.

Algorithms that preferentially select certain groups of people for jobs (or housing ads), make it fairly obvious that those applications have a strong the ethical dimension. But we can still go a few steps further to even more drastic examples. For this, let's move away from targeted advertisements. Data Science algorithms have also been used in the past to help with the actual selection of candidates for job vacancies, for instance, Facebook {cite}`reuters_amazon_2018`. And it turned out that due to several flaws and biases in the data (most developers are male), this algorithm had learned to also prefer male candidates over female candidates. 

### Beyond the Job Market: High-Stakes Algorithmic Decision-Making

The transition from the job market to even more critical uses of algorithms illustrates the expanding ethical horizon that data scientists must navigate. A stark example of this is found in the use of algorithms in the judicial system, such as the COMPAS software {cite}`martin_ethical_2019`{cite}`barocas_big_2016` that is used to predict the risk of recidivism for people that stand trial and hence influences if those people get released on bail or not. The stakes in this context are incomparably higher, as the outcomes directly impact individuals' liberty and societal perceptions of justice.

```{figure} ../images/fig_algorithm_ethics.png
:name: fig_ethics_examples

In several actual cases, algorithms were (and are) used for decisions with very severe personal consequences.
```

The ethical scrutiny for algorithms like COMPAS is intense, primarily because they touch upon core values of fairness and equity. Studies and criticisms have highlighted how such algorithms, despite being designed  to aid in objective decision-making, can reflect and amplify existing  prejudices. This raises profound ethical questions about reliance on algorithmic judgments in life-altering decisions and underscores the need for rigorous oversight, transparency, and ethical accountability in their design and application.

### Data Science is tied to ethical considerations

It is crucial to understand that, from an ethical standpoint, **data is not neutral** {cite}`DataFeminism2020`, and likewise, **algorithms are not neutral** {cite}`martin_ethical_2019`{cite}`Stinson2022`{cite}`fazelpour_algorithmic_2021`. As (future) data scientists, we must exercise the utmost care when working with data and algorithms. The examples provided should illustrate the importance of critically reflecting on the intentions behind our actions as data scientists. This reflection should encompass various perspectives to comprehend the "bigger picture". For instance, Shoshana Zuboff's "The Age of Surveillance Capitalism" {cite}`zuboff2019` delves into how corporations like Google leverage users' personal data, or "behavioral surplus", to customize advertisements, essentially transforming users into products. Zuboff criticizes this practice, asserting that it undermines individuals' autonomy and capacity to influence their future. She proposes regulations and corporate accountability to ensure that technology benefits users rather than merely serving large corporations. Hence, the fact that we, as data scientists, *can* potentially extract maximum information or yield the "best" predictions from data does not mean we *should* do so.

A very important aspect in this context is the question of accountability, so who is in the end responsible for decisions taken by (or based on) an algorithm, for instance {cite}`martin_ethical_2019`. Most data scientists are no trained ethicists and lawyers, and they also don't have to be. But I hope that the ethical aspects we briefly touch upon in this chapter make clear, that our role as data scientists is not finished when we have working code and a pretty-looking plot in the end. It is not finished if we trained a machine-learning model that predicts with 99.9% accuracy (what does that mean anyway...). It is not finished when we successfully published our results or got a clap on our shoulders from the upper management. Our core job **includes** the ethical component, we have the duty to reflect on the potential consequences of our work. And this means that we should not only learn how to apply so many different data science methods, but also we need to learn enough about those methods to judge why we use a certain method and what common pitfalls are that we need to test and take care of. Luckily, making this extra effort will also technically make us better data scientists.

How do you feel now? Sounds like a heavy burden? Sure. But remember the wisdom of Spider-Man: 

> **With great power comes great responsibility!**



### Continue reading!

There are many great resources to dig deeper into the topic of ethics and data science. Here are just a few suggestions.

- **"Fairness and Machine Learning: Limitations and Opportunities" by Solon Barocas, Moritz Hardt, and Arvind Narayanan**
  This accessible online resource (freely available book, but also videos and materials, see [here](https://fairmlbook.org/)) provides an in-depth look at the challenges and opportunities for ensuring fairness in machine learning systems. It's an excellent primer for data scientists interested in developing algorithms that avoid perpetuating biases.
  {cite}`barocas-hardt-narayanan`

- **"Weapons of Math Destruction" by Cathy O'Neil** 
  This book provides a critical look at how big data algorithms can increase inequality and threaten democracy. O'Neil explores a variety of case studies where algorithms have had profound negative effects on people's lives, making it an essential read for understanding the societal impacts of data science.
  {cite}`oneil2017weapons`

- **Ethics and Data Science (Mike Loukides, Hilary Mason, and DJ Patil on O'Reilly Media)**
  A concise, practical handbook that offers a framework for ethical decision making in data science projects. It includes case studies, guidelines, and exercises to help practitioners incorporate ethical considerations into their workflows.
  {cite}`loukides_ethics_2018`

  

### Group Exercise - get a sense of the wide range of ethical implications!

#### Objective:

This exercise is designed to engage participants in a thoughtful discussion about the ethical implications of data science applications across various domains. By working in small groups, you'll explore real-world scenarios where data science intersects with ethical considerations, fostering a deeper understanding of the responsibilities that accompany the power of data analytics.

#### Instructions:

1. **Form Small Groups:** Divide into small groups of 3-5 participants. Each group will select one of the following areas to focus on for their discussion. If there are enough groups, try to ensure that each topic is covered by at least one group.
2. **Select a Topic:** Choose one of the following areas for your group's discussion:
   - **Analyzing Online User Behavior**
   - **Studying Internal Corporate Processes**
   - **Evaluating Political Campaigns**
   - **Developing Algorithms in Medicine and Research**
   - **Communicating Scientific Content**
3. **Discussion Points:** For your selected area, consider the following points during your discussion:
   - **Ethical Dilemmas:** Identify specific ethical dilemmas or concerns that may arise in the application of data science within your chosen area. Consider issues such as privacy, consent, potential for bias, and misuse of data.
   - **Impact Assessment:** Discuss the potential impacts (both positive and negative) of these data science applications on individuals, communities, and society at large.
   - **Balancing Act:** Reflect on how the benefits of these applications can be balanced with ethical considerations. What measures or safeguards could be implemented to mitigate ethical risks?
   - **Creative Solutions:** Propose innovative ideas or strategies that could address or alleviate the identified ethical dilemmas, enhancing the ethical deployment of data science techniques in your chosen area.
4. **Presentation:** Prepare a brief summary of your group's discussion, highlighting the key ethical dilemmas, impacts, and proposed solutions or measures. Each group will present their findings to the rest of the participants, fostering a broader conversation about the ethical implications of data science.
5. **Group Reflection:** After all presentations, reflect as a larger group on the common themes and unique challenges identified across different domains. Discuss how the principles of ethical data science can be universally applied, and consider the role of data scientists in navigating these ethical landscapes responsibly.



[^target-story]: Such a case around a company called "target" [appeared in 2012 in the New York Times](https://www.nytimes.com/2012/02/19/magazine/shopping-habits.htmlmention) and was often referred to in debates around the power of "big data" in such a context. Worth noting maybe, that not everyone fully believed the story itself, e.g. this [blog post](https://medium.com/@colin.fraser/target-didnt-figure-out-a-teen-girl-was-pregnant-before-her-father-did-a6be13b973a5).
