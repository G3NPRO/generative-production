# Prompting Principles

**In one sentence:** A prompt is a set of instructions that tells a generative model what to make; prompting well is the difference between "the model won't cooperate" and "the model is a collaborator."

**Why it matters for filmmakers:** Every generative tool you use — image, video, audio, code — takes a prompt of some kind. The specifics vary wildly between tools, but the underlying skill transfers. A filmmaker who prompts well in Midjourney will prompt better in Claude Code on day one.

## Key ideas

- **Specificity beats cleverness.** The most common prompt mistake is vagueness. "A cinematic shot" gives the model permission to do anything; "a medium shot, 35mm, golden-hour backlight, shallow depth of field, subject in profile" narrows the space. Narrow spaces produce useful outputs.
- **Tell it what, not how, unless the how matters.** For open creative work, describe the outcome you want and let the model choose the approach. For technical work (code, specific camera moves), describe the approach because the outcome depends on it.
- **Show, don't only tell.** Reference images, code examples, or prior outputs often teach the model faster than adjectives. Modern tools accept multiple modalities of reference — use them.
- **Constrain to create.** Counter-intuitively, adding constraints (a time budget, a palette, a rule like "no text in image") usually improves output. Constraints give the model edges to push against.
- **Iterate in small moves.** Change one thing per attempt. If you rewrite half the prompt between generations, you won't know which change helped. This is the same discipline as debugging code.
- **The prompt is not the whole context.** In media tools, seeds, samplers, and reference images shape the output alongside the prompt. In coding tools, project files, `CLAUDE.md` / `AGENTS.md`, and conversation history do the same. The prompt is one input among several.

## Common mistakes

- **Prompt-and-pray.** Writing one long prompt, hitting generate, being disappointed, and writing a completely different long prompt. Iterate on a working base instead.
- **Over-stuffing adjectives.** Piling on descriptors ("epic, cinematic, masterpiece, 8K, trending") usually adds noise, not signal. Keep the prompt specific instead.
- **Ignoring the tool's own prompting guide.** Every major tool publishes one. They aren't generic — a Midjourney prompt doesn't translate directly to Runway, and neither translates directly to Claude. Read the guide.

## Try this

Pick a tool you've used and write three prompts for the same intended outcome: one vague, one specific, one specific-with-constraints. Compare results. Do this before writing more elaborate prompts — the exercise recalibrates what "specific" actually means.

## Related pages

- [`iteration-and-selection.md`](iteration-and-selection.md) — what to do once you have candidates.
- [`../generative-media/craft/`](../generative-media/craft/) — prompting refinements for media (planned).
- [`../vibe-coding/working-with-models/`](../vibe-coding/working-with-models/) — prompting refinements for code (planned).
