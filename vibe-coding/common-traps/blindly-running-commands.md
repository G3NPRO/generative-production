# Blindly Running Agent-Suggested Shell Commands

An agent proposes a command; you hit approve without reading it. Usually fine. Once in a while, catastrophic — a command that deletes a folder you cared about, overwrites a file, or runs something dangerous with your credentials. The fix is a habit: read every command before approving, flag anything with `rm -rf`, `sudo`, or a redirect into a file you didn't expect, and never run an unfamiliar command in a directory you don't want to lose. The agent will propose the right command most of the time; the cost of reading it is trivial compared to the cost of a mistake.

See also: [`../setup-and-safety/`](../setup-and-safety/) on sandboxing — another layer of defense when you can't read every command.
