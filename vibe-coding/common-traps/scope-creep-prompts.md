# Scope-Creep Prompts

You ask for a small change; the agent takes the opportunity to reformat six other files, rename three functions, and "improve" a module you didn't mention. Now the diff is unreadable and you can't tell what was actually asked for. The fix: constrain the agent in the prompt ("change only the `authenticate` function; do not modify other files") and review the diff before committing. When the agent oversteps, reject the whole change and re-prompt rather than trying to cherry-pick — the cheap move is to redo it, not to untangle it.
