---
title: "GEO: SEO for the AI era"
pubDate: "Oct 27 2026"
heroImage: "/cover.jpg"
description: "A practical guide to GEO: entity clarity, machine-readable facts, and evidence that models can cite."
---

Download the one-pager as a PDF [here](/geo-one-pager.pdf).

AI search is not just about ranking pages anymore. It is about making facts easy to retrieve, cite, and reuse. That usually means doing less clever keyword work and more plain-language work.

The useful shape is simple: one clear identity, one clear answer, and one piece of evidence per page. Models tend to be better at repeating facts when those facts are stable and easy to extract.

Here are the practical moves I would make first:

- Pick one canonical name and role for the brand, then reuse it everywhere.
- Use JSON-LD for `Organization`, `Person`, `Service`, `Product`, `FAQ`, and `Article` where relevant.
- Set `@id`, `sameAs`, `author`, `datePublished`, `dateModified`, and `citation` where appropriate.
- Publish a `/llms.txt` file with a short summary, key pages, and Markdown versions.
- Write sections that answer specific questions in one to three sentences.
- Link to primary evidence: datasets, benchmarks, changelogs, patents, or public work.
- Show authors, dates, methods, and what changed.
- Test across ChatGPT, Gemini, Claude, Perplexity, and Grok, then track what each model cites.

The one-pager covers the same approach with starter JSON-LD and `/llms.txt` snippets.
