# Claude hooks

Add pre-run and post-run hooks here for governance checks and metadata-only auditing.

Hook scripts are wired via the `hooks` section in settings files (for example,
`.claude/settings.json`). Common hook events include `PreToolUse`, `PostToolUse`,
`UserPromptSubmit`, and `Notification`.

Examples:

- `pre-run.example.sh` – run before tools (e.g., secret checks).
- `post-run.example.sh` – run after tools (e.g., audit logging).
