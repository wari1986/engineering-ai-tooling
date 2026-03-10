# Template setup guide (required)

Use this checklist to customize the template after cloning or creating from the GitHub template.

## 1. Replace placeholders

Search for these placeholders and replace with your org values:

- `ORG_NAME`
- `GITHUB_ORG`
- `SECURITY_OWNER`
- `AI_GOVERNANCE_OWNER`
- `DATA_PRIVACY_OWNER`
- `INCIDENT_EMAIL`
- `SLACK_INCIDENT_CHANNEL`
- `DOCS_URL`

Suggested command:

```bash
rg -n "ORG_NAME|GITHUB_ORG|SECURITY_OWNER|AI_GOVERNANCE_OWNER|DATA_PRIVACY_OWNER|INCIDENT_EMAIL|SLACK_INCIDENT_CHANNEL|DOCS_URL" -S
```

## 2. Configure unified AI layout

Adopt the standard structure in product repos:

- `.ai/openai/` (Codex entry via `AGENTS.md` boot sequence)
- `.ai/claude/` (Claude supplemental docs)
- `CLAUDE.md` at repo root with `@.ai/claude/context.md`
- `.claude/rules/*.md` for path-scoped additive rules

Use templates from:

- `configs/codex/.ai/openai/`
- `configs/claude/.ai/claude/`
- `configs/claude/CLAUDE.md.template`
- `configs/claude/.claude/rules/`

## 3. Confirm governance owners

Update ownership sections in:

- `docs/governance/README.md`
- `docs/security/README.md`
- `docs/incident-response/README.md`

## 4. Enable reusable workflows

- Update reusable workflow references in `automation/github/workflows/` with your org repo paths.
- Publish this template as a **public or internal template** in GitHub settings.

## 5. Configure Codex and Claude pack distribution

- Update script distribution assumptions in `scripts/bootstrap_codex.sh`, `scripts/update_codex.sh`, `scripts/bootstrap_claude.sh`, and `scripts/update_claude.sh`.
- Decide whether developers consume packs directly or through release artifacts.

## 6. Add MCP servers

- Add org-approved MCP server templates to `mcp/servers/`.
- Update `mcp/catalog/catalog.yaml`.

## 7. Train adopters

- Share `docs/training/README.md` with product teams.
- Ensure they adopt your engineering standards layer.

## 8. Verify validation scripts

Run:

```bash
./scripts/validate_template.sh
```

## 9. Publish governance changelog cadence

- Update `docs/changelog-watch/README.md` with cadence and notification channels.
