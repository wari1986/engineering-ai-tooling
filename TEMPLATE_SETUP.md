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

## 2. Confirm governance owners

- Update ownership sections in:
  - `docs/governance/README.md`
  - `docs/security/README.md`
  - `docs/incident-response/README.md`

## 3. Enable reusable workflows

- Update reusable workflow references in `automation/github/workflows/` with your org repo paths.
- Publish this repo as a **public or internal template** in GitHub settings.

## 4. Configure Codex pack distribution

- Decide where to host the Codex pack (e.g., this repo or a release artifact).
- Update `scripts/bootstrap_codex.sh` and `scripts/update_codex.sh` with your distribution URL or git ref.
- If you use GitHub Releases, update `scripts/bootstrap_codex.sh` to point to the latest asset.

## 5. Add MCP servers

- Add your org-approved MCP server templates to `mcp/servers/`.
- Update the catalog in `mcp/catalog/catalog.yaml`.

## 6. Train adopters

- Share `docs/training/README.md` with product teams.
- Ensure they adopt the taste layer (`docs/engineering-standards/react/README.md`).

## 7. Roll out to product repos

- Use the adoption examples in `docs/adoption-examples/` to wire reusable workflows, policies, and Codex configs.

## 8. Verify validation scripts

Run:

```bash
./scripts/validate_template.sh
```

## 9. Publish governance changelog cadence

- Update `docs/changelog-watch/README.md` with your cadence and notification channel.

---

## Rollout steps (high-level)

1. Stakeholders approve governance baseline.
2. Security and privacy sign off on metadata-only telemetry guidance.
3. Pilot in one product repo, then roll out across teams.
4. Quarterly review of policies and workflow templates.
