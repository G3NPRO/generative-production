# Seeds

**In one sentence:** A seed is a number that, combined with your prompt and model, makes a generation reproducible — change the seed and you get a different image from the same prompt; keep the seed and you get the same image.

**Why it matters for filmmakers:** Seeds are the reproducibility lever. Without them, a good generation is a lucky accident. With them, you can iterate on a specific look, match a previous shot, or hand a project to a collaborator and have them reproduce your work exactly.

## Key ideas

- **The seed is a starting point for the noise.** Diffusion models start from random noise and denoise it toward your prompt. The seed controls which random noise — same seed, same starting noise, same output (given identical prompt and settings).
- **Seeds are not magical quality knobs.** A "good seed" for one prompt is arbitrary for another. Don't chase seeds the way you might chase a prompt revision.
- **Locking the seed lets you iterate on the prompt.** This is the main working use: lock the seed, change one word in the prompt, see what that word does. Without a locked seed, you can't tell what's a prompt effect and what's seed variance.
- **Seeds only reproduce if everything else matches.** Same model version, same sampler, same step count, same image size, same conditioning. Change any of these and the seed-level reproducibility breaks. This is why you also track model and settings, not just the seed.
- **Write down the seeds for final picks.** If a generation makes it into the film, its seed belongs in your prompt book alongside the prompt and model version.

## Common mistakes

- **"Seed hunting."** Rolling random seeds with a static prompt, hoping for a magic output. This is the slot-machine failure mode.
- **Not recording seeds on final generations.** You can't extend, match, or recover a look if you didn't write down the seed.
- **Assuming seed reproducibility across services.** Two services can both accept a seed and still produce different output — they likely use different models, samplers, or precision. Reproducibility is per-tool.

## Related pages

- [`../../../foundations/tracking-your-work.md`](../../../foundations/tracking-your-work.md) — where seed logs live.
- [`../../../foundations/iteration-and-selection.md`](../../../foundations/iteration-and-selection.md) — why locking a seed changes the loop.
- *(Planned: samplers-and-schedulers, resolution, model-versions.)*
