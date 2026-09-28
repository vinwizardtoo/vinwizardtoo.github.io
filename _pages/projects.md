---
layout: page
title: Projects
permalink: /projects/
description: Agent, retrieval and multimodal systems I've built, at work and at CMU. Open a card for the details.
nav: true
nav_order: 3
---

{% assign sorted_projects = site.projects | sort: "importance" %}
<div class="project-grid">
{%- for project in sorted_projects %}
  <a class="project-card" href="{{ project.url | relative_url }}">
    <div class="project-card-figure">{% schematic project %}</div>
    <div class="project-card-body">
      <h3>{{ project.title }}</h3>
      <p>{{ project.description }}</p>
      {% include project_tags.html project=project %}
    </div>
  </a>
{%- endfor %}
</div>

## Other work

<ul class="other-work">
  <li><strong>GPT from scratch</strong><span>A GPT-style language model built from scratch.</span></li>
  <li><strong>Speech-to-text</strong><span>A model that transcribes speech to text.</span></li>
  <li><strong>Face classification</strong><span>A model that classifies face images.</span></li>
  <li><strong>Movie recommender</strong><span>A recommender system for movies.</span></li>
  <li><strong>Pest prediction</strong><span>A model that predicts pest occurrence.</span></li>
  <li><strong><a href="https://ieeexplore.ieee.org/abstract/document/9400227">Multi-labelled Ocular Disease Diagnosis Enforcing Transfer Learning</a></strong><span>Eye-disease paper using transfer learning, presented at CISS'21.</span></li>
</ul>
