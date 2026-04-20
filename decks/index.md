# Decks

Curated presentation decks built from the repo's content using Quarto. Decks are pedagogical sequences, not 1:1 projections of topic pages — a topic page is a reference, a deck is an arc.

## Available decks

### Prompting Principles — An Introduction

An exemplar deck covering the universal prompting skill. Pick a duration:

- [5 minutes](../decks-5min/prompting-intro.html)
- [15 minutes](../decks-15min/prompting-intro.html)
- [30 minutes](../decks-30min/prompting-intro.html)
- [60 minutes](../decks-60min/prompting-intro.html)

**To present:** open any variant in a browser, then `f` = fullscreen, arrow keys = navigate, `s` = speaker view, `Esc` = overview, `?` = help.

**To export a handout PDF:** append `?print-pdf` to the URL (e.g., `.../prompting-intro.html?print-pdf`) and use the browser's Print dialog → Save as PDF. Reveal.js gives you this for free.

## How decks work

- One `.qmd` file per deck.
- Decks pull excerpts from topic pages using Quarto's `{{< include >}}` syntax, so the topic page stays the single source of truth.
- Every slide carries `data-duration`, `data-section`, and `data-level` attributes on its heading. See [`CONTRIBUTING.md`](../CONTRIBUTING.md) for the metadata standard.
- Quarto profiles (`5min`, `15min`, `30min`, `60min`) build four duration variants of each deck at publish time via the [`filters/slide-duration.lua`](../filters/slide-duration.lua) filter.
