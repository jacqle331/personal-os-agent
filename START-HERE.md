# START HERE

## 1. Prerequisites
1. GitHub account
2. GitHub Copilot (Free/Pro)
3. Copilot CLI installed and authenticated
4. Git installed
5. Review [docs/REQUIREMENTS.md](./docs/REQUIREMENTS.md) for exact tools, versions, and verification commands

## 2. Create your copy
1. Click **Use this template** on GitHub
2. Create your own repo
3. Clone it locally

## 3. Fill your intake data
Open `templates/intake-form.template.md` and replace every `{{PLACEHOLDER}}`.

## 4. Generate your working files
Copy templates into real files:
- `templates/soulcode.template.md` -> `soulcode.md`
- `templates/AGENT_REGISTRY.template.md` -> `AGENT_REGISTRY.md`
- `templates/CURRENT_CONTEXT.template.md` -> `CURRENT_CONTEXT.md`
- `templates/SESSION_LOG.template.md` -> `SESSION_LOG.md`

## 5. Configure Copilot instructions
Use:
- `.github/copilot-instructions.md` (repo-scoped)
- Optional global file: `~/.copilot/copilot-instructions.md`

## 6. Run your weekly cadence
- Life agent check-in: `{{CHECKIN_DAY_LIFE}}`
- Finance agent check-in: `{{CHECKIN_DAY_FINANCE_1}}` + `{{CHECKIN_DAY_FINANCE_2}}`
- Relationship check-in: `{{CHECKIN_DAY_RELATIONSHIP}}` or as-needed
