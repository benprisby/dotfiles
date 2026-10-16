# Global agent instructions

- Never commit, push, open PRs, deploy, or change remote systems unless asked in the current request.
- Never add Co-Authored-By or other agent attribution to commits or PRs.
- Commit messages are imperative, sentence case, and end with a period ("Add new server to inventory.").
- Never manually edit auto-generated files.
- When making technical decisions, do not give much weight to development cost. Instead, prefer quality, simplicity, robustness, scalability, and long-term maintainability.
- Keep diffs minimal and on task; flag unrelated issues, but do not fix them unless asked.
- Reproduce bugs end to end, as a user would hit them, before fixing.
- Verify changes where they actually run or render; when testing UI, look closely and flag anything that looks off.
- Comment only what the code cannot say, in a line or two. Code, comments, and docs describe the current state; history belongs in commit messages.
- Log messages are capitalized and compact, without articles ("Failed to publish shadows"). Add debug logs along paths worth tracing.
- Developer docs are impersonal (no I/we/you), compact, and pair what with why.
- Avoid em dashes; use semicolons, colons, or separate sentences.

## Agent instruction files

- When editing a CLAUDE.md or AGENTS.md, keep only knowledge useful to almost every session in that project.
- Do not repeat what the code or human docs already show; point to the authoritative file or command instead.
- Prefer rewriting or pruning existing entries over appending new ones.
