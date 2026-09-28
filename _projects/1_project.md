---
layout: page
title: Advancing Alignment for Multihop and Multimodal Question Answering
description: Aligning images and text for multihop, multimodal question answering (CMU).
img: assets/img/MultimodalProj1.jpg
importance: 1
category: work
related_publications: chang2022webqa,kim2021vilt,yang2022enhancing, zhu2023minigpt
---

Multihop, multimodal question answering (MMQA) needs a model to reason across several images and text passages to reach one answer. Our analysis of existing MMQA systems pointed to a bottleneck: weak alignment between the image content and the reasoning the question requires.

We hypothesized that training a model to pick the image patches relevant to a question, jointly with answering it, would force it to learn how image regions relate to the question and reduce overfitting. We tried three approaches: attentive patching, joint training of the patch selector with the language model, and hierarchical patching. Advisor: Dr. Louis-Philippe Morency.

| <a href = "https://github.com/deigant1998/MultimodalML">Code</a> | <a href = "https://drive.google.com/file/d/1iP6ohRkoVgM7GFHUAW7wXJ3L1fUYe2P8/view?usp=sharing">PDF</a> |


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

<i>Tags - Alignment, Grounding, Multimodal Question Answering, Patching, ViLT, Answer Generation, MiniGPT4</i>
