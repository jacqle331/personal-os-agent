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
Run the setup helper — it copies the templates into real files (and won't
overwrite anything you've already created):
- Windows: `./scripts/setup.ps1`
- macOS/Linux: `bash scripts/setup.sh`

This creates:
- `soulcode.md`
- `AGENT_REGISTRY.md`
- `CURRENT_CONTEXT.md`
- `SESSION_LOG.md`

Then open `templates/intake-form.template.md`, copy it to `intake-form.md`, and
replace every `{{PLACEHOLDER}}`. See [docs/PLACEHOLDERS.md](./docs/PLACEHOLDERS.md)
for the full list. All generated files are git-ignored, so your data stays local.

## 5. Configure Copilot instructions
Use:
- `.github/copilot-instructions.md` (repo-scoped)
- Optional global file: `~/.copilot/copilot-instructions.md`

## 6. Run your weekly cadence
- Life agent check-in: `{{CHECKIN_DAY_LIFE}}`
- Finance agent check-in: `{{CHECKIN_DAY_FINANCE_1}}` + `{{CHECKIN_DAY_FINANCE_2}}`
- Relationship check-in: `{{CHECKIN_DAY_RELATIONSHIP}}` or as-needed
