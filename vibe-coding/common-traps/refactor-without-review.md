# Letting the Agent Refactor Without Review

You ask the agent to "clean up" a module, it rewrites three hundred lines, and you approve the diff without reading it because it's too long. Two weeks later a subtle bug surfaces, and you can't tell what changed vs. what was always wrong. The fix: treat a large refactor as three small ones. Ask the agent to do one thing at a time — rename this, extract that, inline the other — and review each step. If the agent proposes a sweeping change, ask for a summary of what's moving where *before* approving the diff.
