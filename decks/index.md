# Decks

Curated presentation decks built from the repo's content using Quarto. Decks are pedagogical sequences, not 1:1 projections of topic pages — a topic page is a reference, a deck is an arc.

## How decks work

- One `.qmd` file per deck.
- Decks pull excerpts from topic pages using Quarto's `{{< include >}}` syntax, so the topic page stays the single source of truth.
- Every slide carries `data-duration`, `data-section`, and `data-level` attributes on its heading. See [`CONTRIBUTING.md`](../CONTRIBUTING.md) for the metadata standard.
- Quarto profiles (`5min`, `15min`, `30min`, `60min`) build four duration variants of each deck at publish time.

## Decks in this repo

- [`prompting-intro.qmd`](prompting-intro.qmd) — exemplar deck introducing the universal prompting principles.
