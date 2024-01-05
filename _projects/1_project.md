---
layout: page
title: Advancing Alignment for Multihop and Multimodal Question Answering
description: 
img: assets/img/MultimodalProj1.jpg
importance: 1
category: work
related_publications: chang2022webqa,kim2021vilt,yang2022enhancing, zhu2023minigpt
---

In this project the challenges in Multihop and Multimodal Question Answering (MMQA) were adressed. Through the analysis of existing MMQA approaches, alignment between multimodal data and reasoning was identified as the bottleneck in MMQA systems. It was hypothesized that jointly learning to predict relevant patches from an image along with predicting an answer can prevent models from over-fitting by forcing it to learn relationships between image sections and the question, subsequently improving the reasoning process. Explicitly learning the alignment between images and text can allow multimodal models to focus on properties such as “color” and “shape” in images for VQA tasks. Three major approaches were experimented with to alleviate alignment between the images and their relevant questions.

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
    On the left, we deal with attentive patching; where only those patches that are deemed necessary to the given question; are provide to for answer generation. Right, the attentive patch selector and Language Model were jointly trained.
</div>
<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/HierarchicalPatching.jpg" title="example image" class="img-fluid rounded z-depth-1" %}
    </div>
</div>
<div class="caption">
    The aspect of densely representing data with different levels of hierarchy was also dabbled with
</div>

<i>Tags - Alignment, Grounding, Multimodal Question Answering, Patching, ViLT, Answer Generation, MiniGPT4</i>
