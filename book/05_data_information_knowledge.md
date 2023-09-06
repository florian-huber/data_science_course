# Data - Information - Knowledge

So far in our exploration of data science, we've been mostly circling around *data*. However, as briefly touched upon in `{doc}``./book/01_intro_data_science.md` and contrary to what the term *data science* might suggest, data science isn't fundamentally about data. Think of it this way: if data is the raw material, then the ultimate  product a data scientist crafts is *knowledge*. We sift through the vast  sands of data to uncover gems of insight.

The "DIKW Pyramid" (Data - Information - Knowledge - Wisdom) beautifully visualizes the hierarchy that exists from raw data to profound knowledge ({numref}`fig_DIKW_pyramid`). While numerous interpretations of each tier exist, for our  current exploration, let's break it down as:

- **Data**: The raw values or findings obtained through various means such as observations, measurements, surveys, etc. It represents the unprocessed reality, and -at least at this stage- it can be entirely incomprehensible or meaningless. Imagine a streaming camera in a forest meant to detect rare events of spotting certain wild animals. Most of the data recorded will show no such animals and will thus be entirely insignificant for our later analysis.
- **Information**: This is data in context. It has been processed, categorized, and given structure, making it more comprehensible. One way to put it is: "Information is data with potential significance for a user" {cite}`otte_2020` . It's data with added value, transformed into a format that allows for a clearer interpretation.
- **Knowledge**: This goes beyond just having information; it's understanding the information. Knowledge encompasses facts, theories, and rules that have been distilled from the information and are characterized by a high degree of certainty and applicability.



```{figure} ../images/fig_DIKW_pyramid.png
:name: fig_DIKW_pyramid
:width: 75%

The DIKW Pyramid. [Source: wikipedia](https://en.wikipedia.org/wiki/DIKW_pyramid#/media/File:DIKW_Pyramid.svg)
```



### From data to knowledge

Now, think of data science as detective work. A detective starts with clues (our data). These clues, in isolation, may seem random or unimportant. But as the detective starts piecing them together, a story  unfolds (information). Finally, using their understanding of the world,  the detective makes an informed guess about what actually happened (knowledge).

This hopefully gives you a bit of intuition of what we are after as data scientists.
But it should also be noted, that there is no simple recipe of how to get from data to knowledge. In fact, this is what many scientists and philosophers were, and are, after: understanding how we can derive knowledge from data. There is no simple answer to this, and comparing many of the possible answers in details is far beyond the scope of this book. For the interested reader I would still like to briefly introduce a few concepts.

A classical, and often modified and extended, theory of how scientific knowledge progress works was proposed by Karl Popper {cite}`popper_2013`. He suggested that scientists propose hypotheses based on initial observations (data). These hypotheses are then rigorously tested, and if proven wrong, are modified or replaced by newer, more refined hypotheses. This iterative cycle continues, constantly refining our body of knowledge.

Another insightful approach is the "Inference to the Best Explanation" method {cite}`bartelborth_2017`. Here's how it works:

1. **Observation**: Start by observing phenomena. This is your raw data.
   (in the detectives picture: gather clues)
2. **Hypothesis Formulation**: Develop potential hypotheses that might explain the observed data.
3. **Refinement**: Some theories might not fit the facts. So, they're discarded.
4. **Comparison**: Which of our remaining theories explains the data best?
5. **Selection**: Choose the hypothesis (or hypotheses) that offers the most plausible and comprehensive explanation in line with other established knowledge.

While both Popper's approach and the inference to the best explanation emphasize rigorous testing and refinement, they underscore the essence of the scientific method – a systematic pursuit of knowledge. In the realm of data science, these principles guide us, ensuring that insights drawn from data are robust, valid, and, ultimately, enlightening.

In conclusion, data is the foundation upon which knowledge is constructed. But to elevate data to knowledge, a meticulous process of refinement, analysis, and understanding is imperative. There are many possible pitfalls (for instance: biases!). As data scientists, our mission is to navigate this intricate journey, transforming raw data into profound insights that inform, guide, and enlighten.