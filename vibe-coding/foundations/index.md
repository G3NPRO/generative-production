# Foundations (Vibe-coding)

Mental models for someone who has coded little or not at all. This is the on-ramp before the setup and safety material — enough to make the rest of the section make sense.

### What is an agent?

An "agent" in the coding sense is a model that can take actions on your behalf — read files, run commands, edit code — not just chat about them. This is the crucial distinction from a chat window where the model only produces text. Three shapes are common: **autocomplete** (suggests the next few lines as you type, you stay in control), **chat** (you ask, the model answers, you copy the answer into your project), and **agent** (the model reads and writes your project directly, often running commands in a terminal). Each has different affordances and different failure modes; pick the one that matches how much trust the task deserves.

### Where does code actually run?

Code has to run *somewhere* — your laptop, a cloud server, or a hybrid of both — and the difference matters more than it looks. Code that runs locally is fast, free, and private, but limited by your hardware; code that runs in the cloud can scale but costs money and exposes your data. Many AI coding tools also use cloud resources on your behalf (the model itself is in the cloud even when your project is local), which is why a "free" agent can still surprise you with bills. Before starting a project, know where each part of it will execute and what that implies for cost, privacy, and reliability.

### Terminal literacy

The terminal is a text-based way of telling your computer what to do — no icons, no mouse. Agents drop you into one constantly because it's the fastest way for a program to manipulate files and run commands. You don't need fluency, but you need comfort with a handful of verbs: `cd` to change directories, `ls` to list files, `cat` to read a file, `git` to track changes, and enough awareness to recognize when a command looks dangerous (anything with `rm -rf`, anything that rewrites history, anything you didn't ask for). When the agent proposes a command, read it before approving it.

### Git literacy

Git is the version-control system that remembers every change you commit to a project. For filmmakers this is the equivalent of keeping every take: you can always return to an earlier version, compare two versions, or branch off a new experiment without losing the main line. Git matters *especially* when you're working with AI-generated code, because the agent will sometimes produce changes you don't want — a revert is the undo button, and it only works if you've been committing along the way. The working habit: commit small, commit often, write a one-line message describing the *why*, and never skip the review step before pushing changes public.
