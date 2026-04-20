# Tracking Your Work

**In one sentence:** Generative work is only as reproducible as your records of it; a prompt book for media and a git history for code are the same discipline with different files.

**Why it matters for filmmakers:** Without records, a great generation is unrepeatable — you can't extend it, match it, or recover it if a file goes missing. And a project that can't be rebuilt in six months is effectively disposable. Tracking your work is what turns generative output from a trick into a craft.

## Key ideas

- **Capture the inputs, not just the outputs.** For media: prompt, seed, sampler, model, reference images, tool version. For code: the conversation that produced it, the prompt or rules file, the model. The output alone is not enough — you need to know how to get back to it.
- **One source of truth per project.** For media work, keep a prompt book (a spreadsheet or a markdown file) alongside the finished frames. For code, the git repository is the prompt book — commit messages carry the *why*. Either way, the record lives next to the work.
- **Save seeds and commits, not just final picks.** The abandoned attempts carry information about what almost worked. A commit you revert is still a record; a seed you noted is still a recipe.
- **Models change under you.** A model version that produced a look last year may no longer exist. Note the exact version when you use it and, for production work, consider whether you need to archive the model itself.

## Common mistakes

- **Trusting the cloud tool to remember for you.** Most generative services retain history for some window and then discard it — or change the retention policy without warning. Export locally.
- **Losing the prompt when keeping the image.** A folder of PNGs with no prompts attached is a gallery, not a record.
- **Mixing commits and generations.** For code projects, don't let the agent commit on your behalf without reviewing the diff — a forgotten commit of an experimental generation is hard to untangle later.

## Related pages

- [`iteration-and-selection.md`](iteration-and-selection.md) — what you're tracking is the iteration history.
- [`../practical/`](../practical/) — reproducibility at project scale (planned).
