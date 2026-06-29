# START HERE

> **Brand new to this?** Follow the [step-by-step walkthrough](./docs/WALKTHROUGH.md)
> instead — it covers everything below in plain language, including installing tools.

## 1. Prerequisites
1. GitHub account
2. **One** AI assistant CLI (pick the one you have):
   - GitHub Copilot CLI (requires Copilot Free/Pro)
   - Claude Code (requires a Claude account)
   - Gemini CLI (free tier available)
3. That assistant installed and authenticated
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

## 5. Configure your assistant's instructions
This template ships with instructions for all three assistants — use the file for
yours (no setup needed beyond having the file in the repo):
- GitHub Copilot: `.github/copilot-instructions.md` (optional global: `~/.copilot/copilot-instructions.md`)
- Claude Code: `CLAUDE.md`
- Gemini CLI: `GEMINI.md`

These three files are kept in sync — if you edit one, mirror the change to the others.

## 6. Run your check-in
Start your assistant in the project folder, then ask it to run a check-in:
```bash
copilot      # or:  claude      # or:  gemini
```
Cadence:
- Life agent check-in: `{{CHECKIN_DAY_LIFE}}`
- Finance agent check-in: `{{CHECKIN_DAY_FINANCE_1}}` + `{{CHECKIN_DAY_FINANCE_2}}`
- Relationship check-in: `{{CHECKIN_DAY_RELATIONSHIP}}` or as-needed
