# Runaway API Bills

A script gets stuck in a loop and calls the API a million times overnight; a misconfigured job keeps retrying a failed request; a leaked key is used by someone else. The common thread: no ceiling. The fix is layered — per-key spending caps at the vendor, per-request timeouts in your code, a circuit breaker that stops calling an API after N consecutive failures, and email alerts when spend exceeds a threshold. You set these up *before* you need them, because the time you need them is at 3am when the damage is already happening.

See also: [`../setup-and-safety/`](../setup-and-safety/) on API keys and spending caps.
