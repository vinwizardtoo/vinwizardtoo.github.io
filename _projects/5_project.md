---
layout: page
title: Retrieval and Root-Cause Tools for RAG
description: An advanced retrieval tool and a root-cause analysis tool for RAG failures.
org: C3 AI
year: 2025
tags: [Hybrid search, PGVector, Reranking, RAG debugging]
importance: 2
category: work
schematic:
  - label: Query
    tip: A user question enters the retrieval pipeline.
  - label: Filters
    sub: keyword + metadata
    tip: Narrows the candidates with keyword and metadata filters in PostgreSQL.
  - label: Vector search
    sub: PGVector
    tip: Finds semantically similar passages with the PGVector extension.
  - label: Reranker
    sub: cross-encoder or LLM
    tip: A user-configurable reranker reorders the retrieved passages.
  - label: Answer
    tip: The top passages ground the generated answer.
  - label: Root-cause tool
    sub: on failures
    tip: When an answer goes wrong, traces which stage failed so it can be fixed without manual debugging.
---

<div class="project-meta">{% include project_tags.html project=page %}</div>

<i>Data Scientist, Jan 2025 – Jun 2025</i>

{% schematic page interactive %}

### Problem

RAG answers are only as good as the passages behind them, and when an answer goes wrong, finding out why takes slow manual debugging.

### Approach

Make retrieval hybrid and tunable, then give failed answers a tool that traces them back to their cause.

### What I built

- **Advanced retrieval tool:** a hybrid RAG pipeline in PostgreSQL with the PGVector extension that combines keyword filtering, metadata filtering and vector search, followed by a user-configurable reranker (cross-encoder or LLM-based).
- **Root-cause tool:** traces why a RAG answer went wrong, cutting the manual debugging needed for each failed query.
- **Markdown-to-slides tool:** turns markdown into slide decks.

### Stack

PostgreSQL · PGVector · cross-encoder and LLM rerankers
