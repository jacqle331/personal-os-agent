# Requirements

This template is easiest to run on **Windows + PowerShell**, but can be adapted to macOS/Linux.

## Accounts required
1. **GitHub account** (verified email recommended)
2. **GitHub Copilot enabled** (Free or Pro)

## Tools required
1. **Git** (for template clone/push)
2. **GitHub Copilot CLI**
3. **Terminal shell**
   - Windows: PowerShell (recommended)
   - macOS/Linux: bash/zsh (supported with manual script changes)

## Recommended tools
1. **OneDrive / cloud sync folder** for personal files
2. **Excel or spreadsheet app** for finance tracking
3. **VS Code** (optional, but helpful for editing templates)

## Minimum validation checks
Run these after setup:

```powershell
git --version
copilot --version
copilot /help
```

Expected result: each command runs without errors.

## Copilot instructions loading
Use at least one of these:
1. Repo-scoped: `.github/copilot-instructions.md`
2. Global: `~/.copilot/copilot-instructions.md`

If you need instructions in every session regardless of folder, use the **global** file.

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

