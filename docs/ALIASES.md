# Launch Aliases (optional)

Aliases let you start an agent mode with one short command instead of typing a
full prompt each time. These are convenience shortcuts — totally optional.

## What an "alias" means here
A small shell shortcut that opens Copilot CLI and tells it which mode to enter.

## PowerShell (Windows)
Add these to your PowerShell profile (`notepad $PROFILE`). Use the line for the
AI assistant you have installed:

```powershell
# GitHub Copilot CLI
function life   { copilot -p "Start in Life mode. Read CURRENT_CONTEXT.md and SESSION_LOG.md, then run my life check-in." }
function money  { copilot -p "Start in Finance mode. Read CURRENT_CONTEXT.md, then run my finance check-in." }
function us     { copilot -p "Start in Relationship mode. Help me prep/reflect using my soulcode and context." }

# Claude Code — swap `copilot` for `claude`
# Gemini CLI  — swap `copilot` for `gemini`
```

Reload with `. $PROFILE`, then just type `life`, `money`, or `us`.

## bash / zsh (macOS / Linux)
Add to `~/.bashrc` or `~/.zshrc`. Use the line for your AI assistant:

```bash
# GitHub Copilot CLI
alias life='copilot -p "Start in Life mode. Read CURRENT_CONTEXT.md and SESSION_LOG.md, then run my life check-in."'
alias money='copilot -p "Start in Finance mode. Read CURRENT_CONTEXT.md, then run my finance check-in."'
alias us='copilot -p "Start in Relationship mode. Help me prep/reflect using my soulcode and context."'

# Claude Code — swap `copilot` for `claude`
# Gemini CLI  — swap `copilot` for `gemini`
```

Reload with `source ~/.bashrc` (or `~/.zshrc`).

> Tip: rename the functions/aliases to your agent names from `AGENT_REGISTRY.md`.
