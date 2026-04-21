# Setup and Safety

The things that will hurt you if you skip them. Credentials, billing, what never goes into git, and how to let an agent run commands without letting it ruin your afternoon.

### Managing credentials

Credentials (API keys, passwords, tokens) are the secrets your code uses to access paid services. They get handled differently from every other kind of configuration because a leaked key gets scraped from a public repo within minutes and billed to you until you rotate it. The standard pattern: store real keys in a password manager, copy them into a local `.env` file your project reads from, add `.env` to `.gitignore` so it never gets committed, and ship a `.env.example` with blank values so collaborators know which keys to fill in. Set up `.gitignore` *before* you put a credential in a file — the mistake is almost always committing the file before realizing you should have excluded it.

### API keys, billing, and spending caps

Every paid generative tool authenticates you with an API key, and every one of those keys is attached to a billing account. The two things that will bite a beginner: rate limits (you hit a ceiling and requests start failing) and uncapped spend (a runaway script, or a leaked key, burns through your card). Treat an API key like a credit card — one per project so blast radius stays contained, a hard monthly spending limit set at the vendor dashboard before you write a line of code, and email alerts at 50% and 90% of that limit. A leaked uncapped key has cost beginners thousands of dollars in a day; a capped one caps the damage.

### Repos and `.gitignore`

A repository ("repo") is the folder git tracks. A public repo is visible to everyone on the internet, including bots that scan GitHub for leaked secrets — so "what goes in the repo" is a load-bearing decision. `.gitignore` is the file that tells git *not* to track certain files: credentials (`.env`), build artifacts (`node_modules/`, `_site/`), generated media, large binaries, and anything personal or secret. Every new project starts with a `.gitignore` tailored to its language or framework (most hosts offer a starter file), and every commit should be preceded by a `git status` to confirm you're about to push what you think you're pushing.

### Sandboxing

Sandboxing means running the agent in an environment where it *can't* hurt you — a container, a virtual machine, a project folder it can't escape. This matters because agents execute commands, and an agent that's been tricked, confused, or compromised can do real damage to your machine. The practical move: run agents against a project directory with a clear boundary, never give one full access to your home folder or system directories, use permission prompts for anything that touches your filesystem, and review each command before approving when the tool supports it. Trust the agent to the exact degree you'd trust a well-meaning intern — capable, but supervised.
