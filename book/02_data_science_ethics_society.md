# Data Science, Ethics, and Society

In a world that is increasingly data-driven, the role of data science extends beyond pure analysis and prediction. The use of data and algorithms is intimately entwined with ethical considerations and societal implications. The power of data science to influence and shape our world is vast, and, as the Spider-Man quote goes: *"with great power comes great responsibility"* ([see wikipedia](https://en.wikipedia.org/wiki/With_great_power_comes_great_responsibility)). 

Analyzing online user behavior, studying internal corporate processes, evaluating political campaigns, developing algorithms in sectors such as medicine and research, and communicating scientific content — all of these tasks can be performed using data science. However, each of these also brings its own ethical questions and societal implications.

Let's delve into each of these aspects in a bit more detail:

- **Analyzing Online User Behavior**: The analysis of online user behavior can offer significant insights into consumer preferences and habits, enabling businesses to tailor their offerings and improve their services. However, this needs to be balanced with privacy considerations and the need to obtain informed consent from users.
- **Studying Internal Corporate Processes**: Data science can be used to optimize corporate processes, increasing efficiency and productivity. But it's also essential to consider the implications for employees, such as changes in work patterns or privacy concerns.
- **Evaluating Political Campaigns**: The use of data science in political campaigns can help parties to understand the needs and preferences of the electorate. However, the misuse of personal data or the propagation of misinformation poses ethical dilemmas.
- **Developing Algorithms in Medicine and Research**: Algorithms can be powerful tools in medicine and research, enabling accurate diagnoses and efficient drug discovery. Nevertheless, considerations around data privacy, informed consent, and the potential for bias in algorithmic decision-making are critical.
- **Communicating Scientific Content**: Data visualization can help communicate complex scientific concepts effectively. Yet, it's crucial to present data accurately and transparently to avoid misinterpretation or misuse.

Therefore, the reach of data science is not limited to technology or business; it has immediate societal implications. But let's have a closer look at some specific examples to get a better idea of what this actually means.



### Let's look at some examples!

#### Targeted Advertisement - good, bad, neutral?

Even before the digital revolution, targeted advertising was a commonly  used strategy. Businesses would use basic demographic information, such  as age, gender, and location, to tailor their messages to specific  audiences. However, with the advent of the internet and the surge in  digital data, the face of targeted advertising has transformed  completely. Today's targeted ads are not just influenced by basic  personal features but are significantly shaped by individual online behaviors, including search histories, website visits, and social media interactions {numref}`fig_advertise01`. This evolution has ushered in a new era of personalized  advertising, elevating its precision and relevance to unprecedented  levels.



```{figure} ../images/fig_targeted_advertisement_01.png
:name: fig_advertise01

Targeted advertisement can nowadays use much more data and information on a potential customer (here: Alice) when compared to pre-digital times.
```

You may already be feeling a touch of unease. Is it truly beneficial for companies or other organizations to have access to all this data? On the flip side, consider this: isn't it a **win/win situation**? Companies can reach a much more suitable audience, and individuals  receive advertisements tailored to their profiles and interests. Take, for example, Alice ({numref}`fig_advertise02`).  Because of her age (neither too young nor too old),  location (within 2 hours of the festival venue), and interests (many  likes for Hip-Hop bands), she receives an advertisement for a Hip-Hop  festival. This offer is a clear match for her. However, Alice wouldn't  get a mail catalog for a package tour operator catering to a different  customer profile—typically older and, let's say, less concerned about  the carbon emissions of their tours. That's a plus for Alice. And a plus for both companies, isn't it?

```{figure} ../images/fig_targeted_advertisement_02.png
:name: fig_advertise02

In many cases target advertisement does little harm. It might even seem like a win/win situation at first.
```

However, things get a bit more complex when we consider the marketing of more sensitive products. Let's take the example of maternity wear. Suppose a company uses data science to detect early signs of pregnancy, like changes in online shopping behavior. They might then start sending ads for maternity clothes. This could potentially lead to uncomfortable or even harmful situations  ({numref}`fig_advertise03`).  

For instance, what if the individual hasn't yet told their family or friends about the pregnancy? [^target-story] Or, in a more distressing scenario, what if the pregnancy is unwanted, or complications arise? In such cases, receiving maternity ads could cause emotional distress. And it's not limited to maternity products; this applies to any sensitive product or service.

```{figure} ../images/fig_targeted_advertisement_03.png
:name: fig_advertise03

But even advertisements can quickly turn into ethically much more complicated matters. 
```

And what if the advertisement is not product in a classical sense, but a high-paying job?
Consider a study using AdFisher, an automated tool designed to scrutinize the interplay between user behavior, Google ads, and the Ad Settings that Google provides for user control and transparency {cite}`datta2015automated`. During  the course of the research, it was discovered that modifying the user  profile to 'female' resulted in fewer advertisements for high-paying jobs compared to when it was set to 'male' ({numref}`fig_advertise04`). This highlighted a potentially discriminatory consequence of algorithmic decision-making, underscoring the need for ethical considerations in data science. Yet, the complexity of the digital ad ecosystem, with its numerous players, rendered it challenging to definitively pin down the origin of this bias, illustrating the multifaceted nature of ethical  issues in our field.

```{figure} ../images/fig_targeted_advertisement_04.png
:name: fig_advertise04

Advertisements can have potentially large impacts... for instance if we talk about job advertisements. 
```

A similar study examined Facebook's ad delivery process, revealing  another layer of potential algorithmic discrimination {cite}`Ali_2019`. The research indicated that, even when advertisers aim for inclusivity in their targeting parameters, the optimization processes employed by Facebook could inadvertently skew ad delivery along gender and racial lines. This was particularly evident in advertisements for employment and housing opportunities. As such, these findings underline the importance of  scrutinizing not just the algorithms behind data analytics but also the  optimization mechanisms of digital platforms themselves, further emphasizing the role data scientists must play in promoting fairness and preventing discrimination.

Algorithms that preferentially select certain groups of people for job or housing ads, make it it fairly obvious that those applications have a strong the ethical dimension. But we can still go a few steps further to even more drastic examples. For this, let's move away from targeted advertisements. Data Science algorithms have also been used in the past to help with the actual selection of candidates for job vacancies, for instance Facebook {cite}`reuters_amazon_2018`. And it turned out that due to several flaws and biases in the data (most developers are male), this algorithms had learned to also prefer male candidates over female candidates. 

Algorithms are used for even more ethically critical applications. The software COMPAS for instance {cite}`martin_ethical_2019`{cite}`barocas_big_2016` is used to predict the risk for people that stand trial and hence influences if those people get released on bail or not.

```{figure} ../images/fig_algorithm_ethics.png
:name: fig_ethics_examples

In several actual cases, algorithms were (and are) used for decisions with very severe personal consequences.
```

### Data Science comes with ethical considerations

It is crucial to understand that, from an ethical standpoint, **data is not neutral** {cite}`DataFeminism2020`, and likewise, **algorithms are not neutral** {cite}`martin_ethical_2019`{cite}`Stinson2022`{cite}`fazelpour_algorithmic_2021`. As (future) data scientists, we must exercise the utmost care when  working with data and algorithms. The examples provided should  illustrate the importance of critically reflecting on the intentions  behind our actions as data scientists. This reflection should encompass  various perspectives to comprehend the "bigger picture". For instance,  Shoshana Zuboff's "The Age of Surveillance Capitalism" {cite}`zuboff2019` delves into how corporations like Google leverage users' personal data, or "behavioral surplus", to customize advertisements, essentially  transforming users into products. Zuboff criticizes this practice,  asserting that it undermines individuals' autonomy and capacity to  influence their future. She proposes regulations and corporate  accountability to ensure that technology benefits users rather than  merely serving large corporations. Hence, the fact that we, as data  scientists, *can* potentially extract maximum information or yield the "best" predictions from data does not mean we *should* do so.

A very important aspect in this context is the question of accountability, so who is in the end responsible for decisions taken by (or based on) an algorithm, see for instance {cite}`martin_ethical_2019`. Most data scientists are no trained ethicists and lawyers, and they also don't have to be. But I hope that the ethical aspects we briefly touch upon in this chapter make clear, that our role as data scientist is not finished when we have working code and a pretty looking plot in the end. It is not finished if we trained a machine-learning model that predicts with 99.9% accuracy (what does that mean anyway...). It is not finished when we successfully published our results or got a clap on our shoulder from the upper management. Our core job **includes** the ethical component, we have the duty to reflect on the potential consequences of our work. And this means, that we should not only learn how to apply the so many different data science methods, but also we need to learn enough about those methods to judge why we use a certain method and what common pitfalls are that we need to test and take care of. Luckily, making this extra efforts will also technically make us better data scientists.

How do you feel now? Sounds like a heavy burden? Sure. But remember the wisdom of Spider-Man:   

> **With great power comes great responsibility!**



[^target-story]: Such a case around a company called "target" [appeared in 2012 in the New York Times](https://www.nytimes.com/2012/02/19/magazine/shopping-habits.htmlmention) and was often refereed to in debates around the power of "big data" in such a context. Worth noting maybe, that not everyone fully believed the story itself, e.g. this [blog post](https://medium.com/@colin.fraser/target-didnt-figure-out-a-teen-girl-was-pregnant-before-her-father-did-a6be13b973a5).
