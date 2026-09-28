---
layout: page
title: Tip-of-the-Tongue Retrieval with LLMs
description: LLM query decomposition and reranking to find movies from vague, half-remembered descriptions.
org: Carnegie Mellon University
year: 2023
tags: [Query decomposition, Dense retrieval, LLM reranking, GPT-4]
importance: 5
category: work
related_publications: chang2022webqa,kim2021vilt,yang2022enhancing, zhu2023minigpt
schematic:
  - label: Vague description
    tip: A user describes a movie they can't name.
  - label: Query decomposition
    sub: LLM
    tip: An LLM breaks the description into focused sub-queries.
  - label: Dense retrieval
    tip: A dense retrieval model finds candidate movies for the sub-queries.
  - label: Pointwise rerank
    sub: LLM
    tip: An LLM scores each candidate independently to reorder the list.
  - label: Ranked movies
    tip: The most likely titles come first.
---

<div class="project-meta">{% include project_tags.html project=page %}</div>

<i>Advisors: Dr. Chenyan Xiong and Dr. Daphne Ippolito.</i>

{% schematic page interactive %}

### Problem

Tip-of-the-Tongue (ToT) retrieval is finding an item, here a movie, from a vague, half-remembered description.

### Approach

Use LLMs where they help most: to decompose the description into better queries, and to rerank what a dense retriever finds.

### What I built

A retrieval pipeline for the TREC ToT track: LLM query decomposition, a dense retrieval model and pointwise LLM reranking. Using smaller models, it beat the GPT-4 baselines provided by the TREC ToT organizers.

### Stack

GPT-3.5 · GPT-4 · dense retrieval · embeddings

| <a href = "https://github.com/JMVCoelho/llms-project">Code</a> | <a href = "https://drive.google.com/file/d/1RJaBr5oUAoSyYmQ6w4N34-xsLHULreYj/view?usp=sharing">PDF</a> |


### Original diagrams

<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/LLMProj.png" title="example image" class="img-fluid rounded z-depth-1" %}
    </div>
</div>
<div class="caption">
    Proposed pipeline
</div>
