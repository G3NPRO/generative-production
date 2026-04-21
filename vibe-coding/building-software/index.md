# Building Software

Sensible defaults for someone assembling their first non-trivial project. The theme: prefer the boringest credible choice, and read things before pasting them.

### Reading API docs

Most services you'll integrate — an image-generation API, a cloud storage bucket, a video-delivery platform — publish documentation that describes what calls are available and what they expect. The skill is skimming docs for the three things you need: the authentication method (how the key goes in), the endpoint structure (what URL to hit and with what shape of data), and a working example (to confirm you read the first two correctly). REST and HTTP are the common vocabulary — a call is almost always a `GET`, `POST`, `PUT`, or `DELETE` to a URL with a JSON body. SDKs wrap this in a language-specific library; raw HTTP calls work when no SDK exists. Either way, read the docs before asking the model — the agent will invent plausible-looking calls that don't exist.

### Frameworks vs rolling-your-own

A framework is a pre-built scaffolding — Rails, Next.js, Django, SvelteKit — that decides most of the structural questions for you so you can focus on what's unique about your project. Rolling your own means building the scaffolding yourself, which an agent will gladly do. The trade-off: frameworks give you battle-tested patterns, community support, and a shared vocabulary with other developers, at the cost of conforming to their conventions. Rolling your own gives you freedom at the cost of reinventing problems that have already been solved. For a beginner, the framework almost always wins — you want to spend your learning on *your* problem, not on everyone else's problems that the framework already solved.

### Native development

Native development means building software that runs directly on a specific platform — iOS, Android, macOS, Windows — rather than in a web browser. It's more powerful (access to hardware, platform APIs, offline use) but costly in ways beginners don't see up front. There's a literal price of admission to become a developer on each platform: Apple's Developer Program is $99/year, Google Play is a $25 one-time fee, and code-signing certificates for Windows and macOS add their own recurring costs. Then there's the approval cycle: every update to an iOS or Android app goes through platform review, which can take days to weeks and sometimes gets rejected for reasons you didn't anticipate — a gatekeeper your web project simply doesn't have. Each platform also has its own toolchain, language, and hardware requirements (iOS development requires a Mac). Don't pick native for your first project — ship something on the web first, where publishing is free, updates are instant, and nothing stands between you and your users. Come back to native once you've shipped.

### Boring tech wins

The counter-intuitive rule of working with AI coding tools is that older, more established technologies produce better results than trendy ones. Rails, Django, Next.js, plain Postgres, plain HTML — the model has seen these in millions of projects and knows their idioms deeply. The new shiny framework released last quarter has less training data behind it, and the agent will confidently improvise code that looks right but isn't. The move: default to the boringest credible choice; only reach for the cutting edge when the problem genuinely requires it. Boring tech is also better for *you* — it has documentation, tutorials, and Stack Overflow answers to help when the model is wrong.

### Dependencies and package managers

A dependency is someone else's code that your project uses — a library, a framework, a utility. A package manager (npm, pip, bundler, cargo) installs and tracks them. Dependencies are powerful because you get to skip work someone else did, and dangerous because you're trusting code you didn't write and often didn't read. Two beginner failure modes: installing random packages the agent suggests without checking who maintains them, and letting versions drift so that "works on my machine" doesn't reproduce anywhere else. The discipline: prefer well-known packages with active maintenance, pin versions in a lockfile, and read what a package does before adding it.

### Reading error messages

Error messages look intimidating but they're usually specific and helpful — the first line often tells you exactly what went wrong and which file to look at. The beginner move is to paste the error into the agent and ask for a fix; the better move is to read it first, form a hypothesis, *then* consult the agent with "I think X is happening because Y — is that right?" This produces better help because you're collaborating on a diagnosis instead of asking the model to guess. Stack traces read bottom-up: the deepest call is usually a library you don't control; the call near the top in *your* code is almost always where the real bug lives.
