# Personal Agent OS Template

![Personal Agent OS Banner](./assets/banner.png)

Build your own AI-powered personal operating system for life, finances, and relationships.

![Template](https://img.shields.io/badge/Repository-Template-blueviolet)
![Copilot Ready](https://img.shields.io/badge/Copilot-Ready-00C853)
![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)

## Why this exists
Most people do not need more goals. They need better systems.  
This template helps you launch practical AI agents with clear roles, rhythms, and boundaries.

## What this is
This is a **starter template** for setting up:
1. A Life Agent (planning, tasks, execution)
2. A Finance Agent (cash flow, bills, budget rhythm)
3. A Relationship Agent (communication and reflection support)

## What it can help with
- Reduce mental load
- Keep context between sessions
- Run weekly check-ins consistently
- Turn recurring responsibilities into repeatable workflows
- Improve follow-through and decision clarity

## Who this is for
- Busy parents and professionals
- People overwhelmed by planning and context-switching
- Couples wanting clearer planning rhythm
- Anyone who wants AI to support real-life execution

## Quick start
1. Read [docs/REQUIREMENTS.md](./docs/REQUIREMENTS.md)
2. Read [START-HERE.md](./START-HERE.md)
3. Complete [SETUP-CHECKLIST.md](./SETUP-CHECKLIST.md)
4. Run the setup helper to generate your working files:
   - Windows: `./scripts/setup.ps1`
   - macOS/Linux: `bash scripts/setup.sh`
5. Replace every `{{PLACEHOLDER}}` (see [docs/PLACEHOLDERS.md](./docs/PLACEHOLDERS.md))
6. (Optional) Set up [launch aliases](./docs/ALIASES.md)
7. Start your first check-in cycle

## Repository structure
```text
docs/        setup guides, requirements, placeholder glossary, aliases
templates/   fill-in templates with placeholders
scripts/     setup helpers (setup.ps1 / setup.sh)
examples/    a filled-out reference setup
assets/      banner + avatar/badge images
.github/     Copilot and issue templates
```

## How context persists between sessions
Your agent stays useful over time by reading two files at the start of every
session and updating them at the end:
- `CURRENT_CONTEXT.md` — what's live right now (priorities, open tasks)
- `SESSION_LOG.md` — a running history of check-ins and decisions

These are generated from `templates/` and kept **local** (git-ignored), so your
personal data never leaves your machine. See [`examples/`](./examples) for what
they look like filled out.

## Important disclaimer
This template is provided **as-is** for educational and organizational purposes.  
You are responsible for reviewing, testing, and safely applying changes in your own environment.  
No warranties or guarantees are provided. Use at your own risk.

This is not legal, financial, medical, or licensed therapeutic advice.
