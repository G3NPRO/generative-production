# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository purpose

**Generative Production** — a study guide and curriculum-ready resource for filmmakers learning to work with generative AI tools. Two first-class pillars sit under this umbrella:

1. **Generative media** — image, video, audio, and spatial work with generative tools (`generative-media/`).
2. **Vibe-coding for filmmakers** — writing code with AI coding tools, treated as a first-class form of generative production (`vibe-coding/`).

Shared meta-skills (prompting, iteration, tracking) live in `foundations/`; cross-pillar concerns (licenses, cost, reproducibility, provenance) live in `practical/`.

## Working in this repo

- **Content is markdown.** No runtime code. The only code in the repo is `_quarto.yml`, one small Lua filter in `filters/`, and the GitHub Actions workflow.
- **Every topic page follows a fixed template** documented in `CONTRIBUTING.md`. Section order is required. Reuse the template — do not invent a new shape.
- **Frame categorically, not by current products.** Pages describe *concepts* and *categories* so they age gracefully. A page called "Runway vs Kling in 2026" should not exist.
- **Audience is beginner filmmakers**, often new to coding too. Keep explanations accessible; define jargon the first time it appears.
- **Short explainers, not tutorials.** A few paragraphs plus curated outbound links. Teachers cherry-pick; self-learners dip in anywhere.
- **Cross-link refinements.** Pages in the pillars that refine a `foundations/` concept should link back to the foundation page.

## Publishing

The same markdown source renders three ways, from one repo:

- GitHub browsing (source rendered directly by GitHub).
- Static site at `generative-production.com`, built by Quarto.
- Reveal.js decks in `decks/` at 5/15/30/60-minute duration variants, built by Quarto using the profile config in `_quarto.yml` plus `filters/slide-duration.lua`.

Deploy is automated by `.github/workflows/publish.yml` on push to `main`.

## Slide metadata

Every slide heading in a `decks/*.qmd` file must carry three attributes:

```
## Some slide {data-duration="5,15,30,60" data-section="prompting" data-level="intro"}
```

See `CONTRIBUTING.md` for the full rules. Missing metadata breaks the duration filter.

## Local planning

`/docs/superpowers` is gitignored — it holds local planning materials (specs, plans) that aren't part of the published site.
