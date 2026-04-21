# Accepting the First Thing That Compiles

The code compiles, the test passes, the feature appears to work — so you ship it. Then an edge case blows up in production. "Compiles" means the syntax is correct; "works for my input" means nothing about the inputs you didn't try. The fix is a small checklist: try the empty input, the wrong type, the oversized input, and the obvious adversarial input before declaring a function done. Coverage of the golden path alone has always been a trap; with AI-generated code, where the model optimizes for "looks plausible," it's worse.
