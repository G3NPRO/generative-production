# Contributing

This repo is a study guide. Consistency is the curriculum value — a teacher who picks up any folder can predict the page shape before reading it. These conventions exist to keep that promise.

## Page template

Every topic page in `foundations/`, `generative-media/*/`, `vibe-coding/*/`, and `practical/` follows this shape:

```markdown
# <Topic>

**In one sentence:** <the thing, plainly>

**Why it matters for filmmakers:** <concrete why, 2–3 sentences>

**Key ideas**
- <3–6 bullets of the actual content>

**Common mistakes**
- <1–3 specific beginner traps>

**Try this** *(optional)*
- <a small exercise or observation prompt>

**Go deeper** *(optional)*
- <curated external links>

**Related pages**
- <internal cross-links>
```

Section order is required. "Try this" and "Go deeper" are optional — include them when the topic rewards them.

## Tone

Short explainer, not tutorial. A few paragraphs plus curated links out. A filmmaker should finish a page with working vocabulary and a clear mental model — not a checklist of commands.

## Framing

Describe *categories* and *concepts*, not current product rankings. A page about "cloud video tools" should age gracefully; a page called "Runway vs Kling in 2026" should not exist.

## Cross-links

Every page that refines a foundation page should link back to it. Every foundation page should link forward to its refinements where they exist.

## Slide metadata standard

Every slide in every deck carries these three attributes on its heading:

```markdown
## What is a prompt? {data-duration="5,15,30,60" data-section="prompting" data-level="intro"}
```

- **`data-duration`** — comma-separated list of profiles this slide appears in. The build-time filter uses this.
- **`data-section`** — thematic section: `prompting`, `iteration`, `licenses`, etc. Future filtering will use this.
- **`data-level`** — `intro`, `working`, `deep`. For progressive decks.

All three are required on every slide. Missing metadata will fail the build once the check script lands.

## Committing

Small commits. One page or one cohesive change per commit. Commit messages follow the pattern `<family>: <short description>` — e.g., `foundations: tracking-your-work` or `vibe-coding: add managing-credentials`.
