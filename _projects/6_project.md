---
layout: page
title: Contract Metadata Extraction
description: A pipeline on AWS that pulls key metadata out of legal contracts.
org: Capgemini
year: 2024
tags: [Document AI, AWS Textract, Claude 3.5, Serverless]
importance: 3
category: work
schematic:
  - label: Contracts
    tip: Legal contract documents come in for processing.
  - label: Text extraction
    sub: AWS Textract
    tip: AWS Textract reads the text out of each document.
  - label: Field extraction
    sub: Claude 3.5
    tip: Claude 3.5 pulls the metadata fields out of the extracted text.
  - label: Storage
    sub: Lambda + DynamoDB
    tip: AWS Lambda and DynamoDB store the metadata and serve it on request.
  - label: Web app
    sub: ReactJS
    tip: The operations team reviews and uses the metadata in a ReactJS web app.
---

<div class="project-meta">{% include project_tags.html project=page %}</div>

<i>Associate Consultant - GenAI Engineer, Aug 2024 – Dec 2024</i>

{% schematic page interactive %}

### Problem

Key details in legal contracts had to be found and recorded by hand.

### Approach

Read each document with OCR, have an LLM pull out the metadata fields, and serve the results to the people who use them.

### What I built

- An extraction pipeline on AWS: AWS Textract reads the documents and Claude 3.5 extracts the fields.
- Storage and serving with AWS Lambda and DynamoDB, behind a ReactJS web app used by the operations team.
- Monitoring through CloudWatch and Splunk.

### Stack

AWS Textract · Claude 3.5 · AWS Lambda · DynamoDB · ReactJS · CloudWatch · Splunk
