# AI incident response

## Purpose

Provide a standard response for AI-related incidents (policy violations, unexpected data exposure, or tool misuse).

## Contacts

- **Primary:** `SECURITY_OWNER`
- **On-call:** `INCIDENT_EMAIL`
- **Slack:** `SLACK_INCIDENT_CHANNEL`

## Severity levels

- **Sev 1:** Confirmed sensitive data exposure.
- **Sev 2:** Policy breach with potential exposure.
- **Sev 3:** Minor policy deviations or tooling issues.

## Response steps

1. Contain: disable affected MCP server or workflow.
2. Assess: identify scope and metadata-only telemetry signals.
3. Notify: security owner and affected teams.
4. Remediate: update rules, policies, or training.
5. Review: document in post-incident report.

## Post-incident report template

- Summary
- Impacted systems
- Root cause
- Timeline
- Remediation actions
- Policy updates required
