# Iteration and Selection

**In one sentence:** Generative tools produce candidates; the craft is in deciding which candidate to keep, which to iterate on, and when to stop.

**Why it matters for filmmakers:** Film has always been about selection — you shoot coverage, you cut the film. Generative tools dramatically cheapen the "coverage" step, which means selection becomes the rate-limiting skill. The filmmakers who do well with generative tools are the ones with taste and discipline in culling, not the ones with the best prompts.

## Key ideas

- **The model is a coverage machine.** A text-to-image model gives you four candidates per generation. A coding agent gives you several attempts at the same function. A video model gives you takes. In all three cases, your job is directing the model toward better candidates *and* editing them down.
- **Cull early, cull often.** Keep every generation and you drown. Mark the one or two candidates worth building on, discard the rest, and iterate. This is the opposite of "save everything in case" — you want active selection.
- **Iterate on the best candidate, not the next idea.** The temptation is to start over when the first batch disappoints. Usually the better move is to take the best of what you got and push in the direction it suggests. This is how working with a model becomes a conversation instead of a gamble.
- **Set a budget before you start.** "I'll spend 20 minutes on this shot" or "I'll give this function three attempts." Without a budget, iteration becomes a slot machine.
- **Know when to stop.** Generative tools are especially good at tempting you to keep iterating forever — the next batch might be perfect. A 75%-quality shot that ships beats a 95%-quality shot that never does.

## Common mistakes

- **Keeping every generation.** The archive becomes noise.
- **Starting over after every disappointing batch.** You lose the direction you were building toward.
- **Iterating without recording what changed.** Without a log, you can't reproduce the good attempts. See [`tracking-your-work.md`](tracking-your-work.md).

## Related pages

- [`prompting-principles.md`](prompting-principles.md) — how to aim the model in the first place.
- [`tracking-your-work.md`](tracking-your-work.md) — how to remember what worked.
