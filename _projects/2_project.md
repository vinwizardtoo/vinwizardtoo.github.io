---
layout: page
title: Tip-of-the-Tongue Retrieval leveraging Large Language Models
description: LLM query decomposition and reranking for Tip-of-the-Tongue movie search (CMU).
img: assets/img/LLMProj.png
importance: 2
category: work
# giscus_comments: true
related_publications: chang2022webqa,kim2021vilt,yang2022enhancing, zhu2023minigpt
---

Tip-of-the-Tongue (ToT) retrieval is finding an item, here a movie, from a vague, half-remembered description. We built a retrieval pipeline for the TREC ToT track that uses LLMs as query decomposers and re-rankers on top of dense retrieval. Using smaller models, it beat the GPT-4 baselines provided by the TREC ToT organizers. Advisors: Dr. Chenyan Xiong and Dr. Daphne Ippolito.

| <a href = "https://github.com/JMVCoelho/llms-project">Code</a> | <a href = "https://drive.google.com/file/d/1RJaBr5oUAoSyYmQ6w4N34-xsLHULreYj/view?usp=sharing">PDF</a> |

<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/LLMProj.png" title="example image" class="img-fluid rounded z-depth-1" %}
    </div>
</div>
<div class="caption">
    Proposed pipeline
</div>

<i>Tags - Query Decomposition, Retrieval, Reranking, Embeddings, Large Language Models, GPT-3.5, GPT-4</i>
