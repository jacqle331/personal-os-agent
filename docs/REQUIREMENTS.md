# Requirements

This template is easiest to run on **Windows + PowerShell**, but can be adapted to macOS/Linux.

## Accounts required
1. **GitHub account** (verified email recommended)
2. **One AI assistant** — choose whichever you have access to:
   - **GitHub Copilot** (Free or Pro)
   - **Claude** account (for Claude Code)
   - **Google** account (for Gemini CLI — free tier available)

## Tools required
1. **Git** (for template clone/push)
2. **Node.js LTS** (to install any of the assistant CLIs) — <https://nodejs.org>
3. **One AI assistant CLI** — install just one:
   - GitHub Copilot CLI: `npm install -g @github/copilot`
   - Claude Code: `npm install -g @anthropic-ai/claude-code`
   - Gemini CLI: `npm install -g @google/gemini-cli`
4. **Terminal shell**
   - Windows: PowerShell (recommended)
   - macOS/Linux: bash/zsh (supported with manual script changes)

## Recommended tools
1. **OneDrive / cloud sync folder** for personal files
2. **Excel or spreadsheet app** for finance tracking
3. **VS Code** (optional, but helpful for editing templates)

## Minimum validation checks
Run these after setup (use the command for your assistant):

```bash
git --version
copilot --version    # or:  claude --version    # or:  gemini --version
```

Expected result: each command runs without errors.

## Assistant instructions loading
This template includes an instructions file for each assistant — keep the one(s)
you use:
1. GitHub Copilot — `.github/copilot-instructions.md` (or global `~/.copilot/copilot-instructions.md`)
2. Claude Code — `CLAUDE.md`
3. Gemini CLI — `GEMINI.md`

These mirror each other; if you edit one, update the others to match.

## What users must customize
Replace all placeholders in `templates/`:
- Name and household context
- Agent names and roles
- Check-in cadence
- Financial categories and bill dates
- Communication preferences and boundaries

## Safety notes
- Do not commit secrets or raw banking exports
- Keep sensitive files local or encrypted
- Review all scripts before running in your environment

