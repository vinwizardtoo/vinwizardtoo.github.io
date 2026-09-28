---
layout: page
title: Conversational Agent for Language Learning
description: A conversational agent that adapts language lessons to what the learner already knows.
org: Carnegie Mellon University
year: 2023
tags: [Reinforcement learning, Knowledge tracing, Conversational AI]
importance: 6
category: work
schematic:
  - label: Learner reply
    tip: The learner answers in the target language.
  - label: Response evaluator
    tip: Checks the learner's reply.
  - label: Knowledge tracer
    sub: transformer
    tip: Updates its estimate of what the learner knows.
  - label: Exercise scheduler
    sub: reinforcement learning
    tip: Decides which new words or grammar to introduce next.
  - label: Conversation generator
    tip: Writes the next turn around the chosen material, guided by a language-learning ontology.
---

<div class="project-meta">{% include project_tags.html project=page %}</div>

<i>Introduction to Deep Learning (11-785) project.</i>

{% schematic page interactive %}

### Problem

Language learners retain more when new material arrives at the right pace for them, which fixed lesson plans can't do.

### Approach

A conversational agent that tracks what the learner knows and uses that to decide what to teach next.

### What I built

A transformer model reads the learner's replies to estimate their proficiency, and a reinforcement learning scheduler decides when to introduce new words and grammar. A language-learning ontology we built keeps the new material relevant and in a sensible order, so each conversation challenges the learner a little more.

### Stack

Transformers · reinforcement learning · deep knowledge tracing

| <a href = "https://github.com/deigant1998/IntroToDeepLearning11785Project">Code</a> | <a href = "https://drive.google.com/file/d/1yF-NP5HgoZ4kNJvTx1Hn4IhVzwpKOBWR/view">PDF</a> |


### Original diagrams

<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/IDLProjFin.png" title="example image" class="img-fluid rounded z-depth-1" %}
    </div>
</div>
<div class="caption">
    End to End integration of the Conversation Generator with the scheduling Algorithm
</div>
