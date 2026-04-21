# Common Traps

A named gallery of specific beginner mistakes, each with the fix. Each trap is its own short page — a cautionary tale you can hand to someone about to make the same mistake. Cross-linked to [`../../practical/`](../../practical/) where topics overlap (licenses, reproducibility, cost).

## The gallery

- [**Committing secrets to git.**](committing-secrets.md) — the single most common way beginners get burned.
- [**Blindly running agent-suggested shell commands.**](blindly-running-commands.md) — most are fine; once in a while, catastrophic.
- [**Force-push disasters.**](force-push-disasters.md) — one flag, whole branch gone.
- [**Letting the agent refactor without review.**](refactor-without-review.md) — a 300-line diff you didn't read.
- [**Accepting the first thing that compiles.**](first-thing-that-compiles.md) — "compiles" ≠ "works."
- [**Scope-creep prompts.**](scope-creep-prompts.md) — you asked for one change; you got six.
- [**Building on sand.**](building-on-sand.md) — unreliable deps, beta APIs, deprecated models.
- [**Runaway API bills.**](runaway-api-bills.md) — loops, retries, leaks — always set a ceiling.
- [**Deploying to production without testing.**](deploy-without-testing.md) — works-on-my-machine, at scale.
- [**Trusting a local-running model demo.**](local-model-demo-trap.md) — a clever trick is not a pipeline.
- ["**Works on my machine" illusions.**](works-on-my-machine.md) — reproducibility is a practice, not a hope.
