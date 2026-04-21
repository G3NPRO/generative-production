# Working with Models

Choosing, prompting, and managing context with AI coding tools. This section refines [`foundations/prompting-principles.md`](../../foundations/prompting-principles.md) for the coding case, and adds the code-specific environment — rules files, skills, MCP — that shapes what the model actually sees.

### Coding models compared

Several model families dominate coding: Anthropic's Claude (Opus / Sonnet / Haiku tiers), OpenAI's GPT family, Google's Gemini, and a growing set of locally-runnable open models. They differ in three ways that matter: raw capability (how hard a problem can it solve), context window (how much of your project it can hold in memory at once), and cost per token. A model that's cheaper per token but needs three attempts to get a function right is not actually cheaper. The right default is the most capable model in the tier that fits your budget; reach for smaller models only when the task is genuinely small (a rename, a syntax question) or when you're running locally for privacy.

### Prompting for code

Prompting a coding model refines the universal prompting principles: specificity beats cleverness, constraints improve output, one change per iteration, and reference examples teach faster than adjectives. The specific-to-code moves: name the language, framework, and version (`Rails 8.1`, `Python 3.12`, `Node 22`) so the model doesn't guess; describe the existing code style if you want consistency; show a small example input and expected output; and say what you've already tried if the first attempt didn't work. The anti-pattern is asking for a "complete implementation" with vague requirements — you'll get something plausible that doesn't fit your codebase.

### Context management

The chat window is an *environment*, not a prompt box. Everything in it — the files the agent has read, the commands it has run, the earlier questions and answers — shapes the next response. This is why "start a new chat" is useful advice: when the environment drifts or fills with irrelevant detail, a fresh conversation is often faster than trying to correct course. Rules files (`CLAUDE.md`, `AGENTS.md`, or the equivalent for your tool) are how you pin the stable context — conventions, domain knowledge, gotchas — so you don't re-type it every session. The skill is curating the environment, not just writing prompts into it.

### Skills

Skills are reusable packages of instructions and examples that extend an agent's behavior for a specific task — "review a pull request," "create a migration," "debug a failing test." They're a step up from rules files: rules live in the project, skills can live in the tool and follow you across projects. Build one when you notice yourself explaining the same workflow to the agent for the third time; don't bother earlier, because premature skills become stale instructions you have to maintain. A good skill is a recipe, not a personality.

### MCP

MCP (Model Context Protocol) is a standard way for an agent to talk to external tools — a filesystem, a database, a browser, an image-generation API. Without MCP, each integration is a one-off; with it, an agent can plug into any compatible tool without custom code. For a beginner, the heuristic is simple: if you find yourself copy-pasting between an agent and another service repeatedly, that's the point where wiring up an MCP server saves time. Don't wire up servers speculatively — each one adds surface area for mistakes.

### Agents vs chat vs autocomplete

These three shapes of AI coding assistance each have a right job. **Autocomplete** (Copilot-style inline suggestions) is fastest for routine code — you stay in control, the model saves keystrokes. **Chat** is best for explanations, design questions, and small isolated functions you'll paste in yourself. **Agents** shine on multi-file changes, refactors, and debugging sessions where reading and writing the project is half the work. Mixing them is normal: use autocomplete while typing, pop out to chat to understand an error message, dispatch an agent to implement the change. The wrong move is using one shape for every job.
