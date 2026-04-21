# Committing Secrets to Git

The single most common way beginner coders get burned. You add an API key to a config file, commit it, push to a public repo, and within minutes a bot has scraped the key and started using it on your account. The fix is preventive: set up `.gitignore` before you put a credential anywhere near the project, verify with `git status` before every commit, and if it happens anyway, rotate the key at the vendor immediately — don't just delete the commit. Git history is distributed; you cannot unshare a leaked secret.

See also: [`../setup-and-safety/`](../setup-and-safety/) for the managing-credentials pattern that prevents this.
