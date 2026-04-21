# Platforms

Where you actually write code with a model. Options span a spectrum from fully-hosted tools that run in your browser to command-line agents that work directly on your own machine. The trade-offs are consistent across the spectrum: the more hosted the tool, the less setup you have to do and the less you can customize; the more local the tool, the more control and visibility you have, at the cost of complexity and your own hardware. For a first project, start further up the hosted end — most frustration at the start is setup, not code.

### In-browser environments

Tools like **Lovable**, **Bolt**, **v0**, and **Replit** let you describe what you want and watch the model assemble a working app in a browser tab — no install, no setup, no git to learn on day one. They're the fastest path from idea to running code, and the right place to prototype. The trade-off is that you're confined to what the platform supports: particular frameworks, particular deploy targets, particular kinds of customization. When a project outgrows the sandbox, you export the code and move somewhere else.

### Native desktop apps from model makers

Anthropic's **Claude** and OpenAI's **ChatGPT** both ship native Mac and Windows apps. These are chat-first tools — the model can read files you drop in, run small bits of code in a sandbox, and answer questions — but they don't manage a project the way an agent or IDE does. Good for explanations, one-off snippets, debugging a small file, and learning. Not where you build a non-trivial project over weeks.

### AI-integrated IDEs

An IDE (integrated development environment) is the editor you'd use even without AI — **VS Code**, **JetBrains**, **Xcode**. AI-integrated IDEs bolt a model into that editor. **Cursor** and **Windsurf** are VS Code forks built around an agent; **VS Code + GitHub Copilot** (or Claude's extension) adds similar capabilities to the mainline editor; JetBrains has its own AI integration. This is where most day-to-day coding with AI happens — you see your project, you see the model's proposed changes, and you decide what to accept.

### Command-line agents

At the other end of the spectrum, command-line agents like **Claude Code**, **Codex CLI**, and **Aider** run in a terminal, read and write files in your project directly, and execute shell commands. They're less beginner-friendly — you need to be comfortable in a terminal — but they're also the most powerful, because the agent has the same access to your project that you do. The right tool when you're orchestrating multi-step work across many files.

### Typical pricing

Most platforms cluster into a few tiers. **Free** usually means limited usage, slower models, or a rate cap — enough to try the tool, not to rely on it. **~$20/month pro subscriptions** are the default for serious single-user work: Claude Pro, ChatGPT Plus, Cursor Pro, GitHub Copilot, Replit Core. **Usage-based API pricing** (Anthropic, OpenAI, Google) charges per token — cheap for occasional scripted calls, potentially expensive for heavy agent use over time. **Team and enterprise plans** stack higher still, typically $50–100+ per seat with admin controls. Before committing to a platform, confirm which tier your actual workflow needs — "the monthly tier is enough for most people" is a common refrain that breaks down fast once you're building something serious.
