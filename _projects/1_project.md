---
layout: page
title: Aligning Images and Text for Multihop Question Answering
description: Teaching a vision-language model to pick the image patches a question needs before answering.
org: Carnegie Mellon University
year: 2023
tags: [Multimodal QA, ViLT, T5, Patch selection]
importance: 4
category: work
related_publications: chang2022webqa,kim2021vilt,yang2022enhancing, zhu2023minigpt
schematic:
  - label: Question + images
    tip: A question that needs reasoning across several images and text passages.
  - label: Patch selector
    tip: Picks the image patches that matter for the question (attentive patching).
  - label: Vision-language encoder
    sub: ViLT
    tip: Jointly encodes the question and the selected patches.
  - label: Answer generator
    sub: T5
    tip: Generates the answer; trained jointly with the patch selector.
  - label: Answer
    tip: The final answer to the multihop question.
---

<div class="project-meta">{% include project_tags.html project=page %}</div>

<i>Advisor: Dr. Louis-Philippe Morency.</i>

{% schematic page interactive %}

### Problem

Multihop, multimodal question answering (MMQA) needs a model to reason across several images and text passages to reach one answer. Our analysis of existing MMQA systems pointed to a bottleneck: weak alignment between the image content and the reasoning the question requires.

### Approach

We hypothesized that training a model to pick the image patches relevant to a question, jointly with answering it, would force it to learn how image regions relate to the question and reduce overfitting.

### What I built

Three approaches to better image-question alignment: attentive patching, joint training of the patch selector with the language model, and hierarchical patching. We also experimented with MiniGPT-4 for multimodal chain-of-thought reasoning.

### Stack

ViLT · T5 · MiniGPT-4 · Llama 2

| <a href = "https://github.com/deigant1998/MultimodalML">Code</a> | <a href = "https://drive.google.com/file/d/1iP6ohRkoVgM7GFHUAW7wXJ3L1fUYe2P8/view?usp=sharing">PDF</a> |



### Original diagrams

<div class="row">
    <div class="col-sm mt-2 mt-md-0">
        {% include figure.html path="assets/img/AttentivePatching.png" title="example image" class="img-fluid rounded z-depth-1" %}
    </div>
    <div class="col-sm mt-2 mt-md-0">
        {% include figure.html path="assets/img/JointTraining.png" title="example image" class="img-fluid rounded z-depth-1" %}
    </div>
</div>
<div class="caption">
    Left: attentive patching passes only the patches relevant to the question to the answer generator. Right: the patch selector and language model trained jointly.
</div>
<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/HierarchicalPatching.jpg" title="example image" class="img-fluid rounded z-depth-1" %}
    </div>
</div>
<div class="caption">
    Hierarchical patching: representing the image densely at several levels of detail.
</div>
