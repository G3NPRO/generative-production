# Force-Push Disasters

`git push --force` overwrites the remote branch with your local state, discarding whatever was there before. Beginners use it to "fix" a messy commit history, and end up erasing work — sometimes their own, sometimes a collaborator's. The fix: never force-push unless you explicitly need to and understand exactly what you're overwriting, prefer `--force-with-lease` (which at least checks someone else hasn't pushed in the meantime), and never force-push to `main`. If you need to undo a commit, use `revert` (adds a new commit that cancels the old one) instead.

See also: [`../foundations/`](../foundations/) on git literacy — the habit that makes force-push unnecessary.
