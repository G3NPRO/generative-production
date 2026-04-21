# Contributing

This repo is a study guide. Consistency is the curriculum value — a teacher who picks up any folder can predict the page shape before reading it. These conventions exist to keep that promise.

## Two kinds of page

Almost every page in this repo is one of two things. Knowing which you're writing is the first decision.

- **Section pages** (`index.md` inside any top-level or sub-section folder). A compact survey of the topics in that section. One paragraph per topic, set off by a simple H3 heading. A reader should finish with a working mental model of the whole section; a teacher should see the complete topic list at a glance.
- **Deep-dive pages** (standalone files alongside a section `index.md`). One focused topic, more developed than a paragraph. Written when a topic genuinely rewards more — a specific cautionary tale, a standalone exercise, a vocabulary-heavy subject like seeds or LoRAs.

**Default to the section page.** Only split a topic into its own deep-dive file when (a) its paragraph is growing past ~200 words and losing its grip on the section's rhythm, or (b) the topic has its own exercise or cautionary-tale shape that needs room.

## Section-page shape

```markdown
# <Section>

<One short intro paragraph: what this section covers and who it's for.>

## <Grouping, if the section has one> *(optional)*

### <Topic>

<One paragraph — 3–6 sentences. Describe the concept, its category,
and the working intuition a filmmaker needs. No sub-bullets; if the
paragraph wants bullets, it's probably a deep-dive topic in disguise.>

### <Next topic>

<Same shape.>
```

A section page typically has 3–8 topics. More than that, split the section.

## Deep-dive shape

```markdown
# <Topic>

**In one sentence:** <the thing, plainly>

**Why it matters for filmmakers:** <concrete why, 2–3 sentences>

## Key ideas

- <3–6 bullets of the actual content>

## Common mistakes

- <1–3 specific beginner traps>

## Try this *(optional)*

<a small exercise or observation prompt>

## Go deeper *(optional)*

- <curated external links>

## Related pages

- <internal cross-links>
```

Section order is required. `Try this` and `Go deeper` are optional — include them when the topic rewards them.

## Tone

Short explainer, not tutorial. A few paragraphs plus curated links out. A filmmaker should finish a page with working vocabulary and a clear mental model — not a checklist of commands.

## Framing

Describe *categories* and *concepts*, not current product rankings. A page about "cloud video tools" should age gracefully; a page called "Runway vs Kling in 2026" should not exist.

## Cross-links

Every page that refines a `foundations/` concept should link back to it. Every foundation page should link forward to its refinements where they exist. Deep-dive pages always link back to their section page.

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
