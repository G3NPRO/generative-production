# Managing Credentials

**In one sentence:** Credentials (API keys, passwords, tokens) are the secrets your code uses to access paid services; leak one and you pay for someone else's bill, so they get handled differently from every other kind of configuration.

**Why it matters for filmmakers:** Every generative tool worth using is paid, and the way you tell your code how to pay is by giving it an API key. Key leaks are the single most common way beginner coders get burned — a public GitHub repo with a key in it gets scraped within minutes, and the first bill arrives before the day is over.

## Key ideas

- **Never put a credential in a file you commit.** Not in code, not in config, not in a comment, not "just temporarily." Git remembers; once committed, even a later removal leaves the secret in history.
- **Use environment variables and `.env` files.** A `.env` file holds `KEY=value` lines. Your code reads from the environment. You add `.env` to `.gitignore` so it never leaves your machine. Ship a `.env.example` that shows which keys are needed, with blank or fake values.
- **`.env.example` is committed, `.env` is not.** The example file lets a collaborator (or future-you) know which environment variables to fill in. The real file stays local.
- **Use a password manager as the source.** 1Password, Bitwarden, Apple Passwords — pick one and store the real keys there. Your `.env` is a convenience cache; the manager is truth.
- **Rotate when something leaks.** The response to "I accidentally committed a key" is not "delete the commit." It's "rotate the key at the vendor, *then* clean the repo." A leaked key is compromised even if you deleted it a minute later.
- **Cap spending where you can.** Most AI vendors let you set a hard monthly spending limit or a per-key rate limit. Set one. A leaked uncapped key has cost some beginners thousands of dollars in a day.

## Common mistakes

- **Committing a `.env` file.** By far the most common mistake. Set up `.gitignore` *first*, credentials *after*. Verify with `git status` before every commit.
- **Pasting a real key into a chat or a code example.** Easy to forget, hard to undo. If you do it in an agent conversation, treat the key as compromised and rotate.
- **Reusing one key for everything.** Per-project keys limit blast radius. If one project's key leaks, only that project is compromised.
- **Leaving a leaked key live because "I deleted the commit."** Git history is distributed — you don't know who cloned the repo in the window the key was public.

## Try this

Before you write a single line of code that uses an API, do the full setup: create a `.env`, add it to `.gitignore`, create a `.env.example`, run `git status` to confirm `.env` is not tracked, and store the real key in your password manager with a note that links to the project. Do this even for a throwaway experiment — practice is what prevents mistakes.

## Related pages

- *(Planned: [`api-keys.md`](./api-keys.md) — billing, rate limits, spending caps.)*
- *(Planned: [`../common-traps/committing-secrets.md`](../common-traps/committing-secrets.md) — a cautionary tale version.)*
- [`../../practical/`](../../practical/) — broader reproducibility and cost management.
