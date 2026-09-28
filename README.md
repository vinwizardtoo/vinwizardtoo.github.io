# vinwizardtoo.github.io

Personal website of Vinay Nair, a machine learning engineer who builds LLM agent and retrieval systems. I currently work at Con Edison (via Fractal), and before that built agent systems at Apple Marcom (via Fractal), C3 AI and Capgemini after a Master's in AI and Innovation at Carnegie Mellon.

Live site: https://vinwizardtoo.github.io

## What's on the site

- **About**: who I am, plus recent news.
- **Projects**: CMU and industry projects, and a short list of other work.
- **Resume**: education and experience, with a link to the PDF resume.

## Run locally

With Ruby and Bundler:

```bash
bundle install
bundle exec jekyll serve
```

Or with Docker:

```bash
docker compose up
```

Then open http://localhost:4000 (Bundler) or http://localhost:8080 (Docker). Pushing to `master` publishes the live site, so make changes on a branch and open a pull request.

Built with the [al-folio](https://github.com/alshedivat/al-folio) Jekyll theme.
