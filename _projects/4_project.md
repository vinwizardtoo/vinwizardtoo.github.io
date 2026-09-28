---
layout: page
title: Multi-Agent Analyst Assistant
description: A multi-agent assistant that routes analysts' questions to the right analytical tools.
org: Apple Marcom (via Fractal)
year: 2025–2026
tags: [Multi-agent, LangGraph, MCP, OpenSearch]
importance: 1
category: work
schematic:
  - label: Analyst question
    tip: An analyst asks a question in plain language.
  - label: Planner agent
    tip: Works out what the question needs and which tool can answer it.
  - label: Index lookup
    sub: structured + unstructured
    tip: Searches structured and unstructured indexes (OpenSearch) to route the query to the right tool.
  - label: Tool agents
    sub: e.g. Snowflake via MCP
    tip: Run the analysis, for example querying Snowflake through an MCP server under Apple's auth controls.
  - label: Conversation memory
    tip: Keeps multi-turn context (Redis) so follow-up questions build on earlier answers.
  - label: Answer
    tip: The analyst gets the answer back in the conversation.
---

<div class="project-meta">{% include project_tags.html project=page %}</div>

<i>Senior Machine Learning Engineer (Forward Deployed), Jun 2025 – Mar 2026</i>

{% schematic page interactive %}

### Problem

Analysts spent a lot of manual effort pulling answers together from many data sources and past material.

### Approach

A team of agents: a planner works out what each question needs and routes it to the right analytical tool, and tool agents do the work.

### What I built

- Multi-agent orchestration on LangGraph, with fully async LLM, search and agent calls.
- A memory layer over Snowflake records and Keynote decks, with OpenSearch lookups across structured and unstructured indexes to pick the right tool for each query.
- A Snowflake MCP server for analysts, running under Apple's auth controls.
- Conversation memory in Redis for multi-turn context.

### Stack

LangGraph · OpenSearch · Snowflake · MCP · Redis
