# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository purpose

**Generative Production** — a study guide and curriculum-ready resource for filmmakers learning to work with generative AI tools.

## Content structure

The site has four top-level sections. Order matters: the first is prerequisites for the middle two; the last applies across everything.

1. **`foundations/`** — shared meta-skills (what is generative production, prompting principles, iteration and selection, tracking your work). Every other section refines these for its medium.
2. **`generative-media/`** — producing images, video, audio, and spatial work. Sub-sections: `concepts/` (model basics, modalities, tools and vendors), `craft/` (consistency, camera motion, temporal coherence, when *not* to use AI), `lifecycle/` (a stage-based crosswalk, not a spine).
3. **`vibe-coding/`** — writing code with AI coding tools, treated as a first-class form of generative production. Sub-sections: `foundations/` (agents, terminal, git), `setup-and-safety/` (credentials, sandboxing), `working-with-models/`, `building-software/`, `common-traps/`.
4. **`practical/`** — cross-cutting concerns that sink projects if ignored: licenses, copyright, likeness, provenance, cost, reproducibility, delivery.

`decks/site-deck.qmd` mirrors this structure — each top-level site section is its own horizontal column, with sub-pages as vertical sub-slides. Keep them in sync: edit a wiki page substantively, skim the matching slide; edit a slide, follow its `Source:` link back to the wiki.

## Working in this repo

- **Content is markdown.** No runtime code. The only code in the repo is `_quarto.yml`, one small Lua filter in `filters/`, and the GitHub Actions workflow.
- **Every topic page follows a fixed template** documented in `CONTRIBUTING.md`. Section order is required. Reuse the template — do not invent a new shape.
- **Frame categorically, not by current products.** Pages describe *concepts* and *categories* so they age gracefully. A page called "Runway vs Kling in 2026" should not exist.
- **Audience is beginner filmmakers**, often new to coding too. Keep explanations accessible; define jargon the first time it appears.
- **Short explainers, not tutorials.** A few paragraphs plus curated outbound links. Teachers cherry-pick; self-learners dip in anywhere.
- **Cross-link refinements.** Pages in `generative-media/` or `vibe-coding/` that refine a `foundations/` concept should link back to the foundation page.

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

## Generating media assets

The **fal-ai MCP** is available in this project (tools prefixed `mcp__fal-ai__*`) for generating images, video, and other media when the site needs illustrative assets.

- **Default image model: Nano Banana 2** (`fal-ai/nano-banana-2`). Use it unless the user asks for a different model. For image editing, use `fal-ai/nano-banana-2/edit`.
- Skip `recommend_model` when generating images — it's already decided. Use `get_model_schema` if you need to confirm parameters.
- Save generated assets under the section they illustrate (e.g. `decks/assets/`, `generative-media/assets/`) with descriptive filenames, not the fal-media hash.
- Download the CDN URL to disk before referencing it — fal CDN links expire.

## Local planning

`/docs/superpowers` is gitignored — it holds local planning materials (specs, plans) that aren't part of the published site.
