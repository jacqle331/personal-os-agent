#!/usr/bin/env bash
# setup.sh — copies templates into your real working files (macOS/Linux).
# Safe: it will NOT overwrite files that already exist.
# Run from the repo root:  bash scripts/setup.sh
set -euo pipefail

root="$(cd "$(dirname "$0")/.." && pwd)"

declare -A map=(
  ["templates/intake-form.template.md"]="intake-form.md"
  ["templates/soulcode.template.md"]="soulcode.md"
  ["templates/AGENT_REGISTRY.template.md"]="AGENT_REGISTRY.md"
  ["templates/CURRENT_CONTEXT.template.md"]="CURRENT_CONTEXT.md"
  ["templates/SESSION_LOG.template.md"]="SESSION_LOG.md"
)

echo "Personal Agent OS — setup"
echo "Generating working files from templates..."

for src in "${!map[@]}"; do
  dst="${map[$src]}"
  if [ ! -f "$root/$src" ]; then
    echo "  ! Missing template: $src — skipped."
    continue
  fi
  if [ -f "$root/$dst" ]; then
    echo "  - $dst already exists, skipping (won't overwrite)."
  else
    cp "$root/$src" "$root/$dst"
    echo "  + Created $dst"
  fi
done

echo ""
echo "Next steps:"
echo "  1. Open each new file and replace every {{PLACEHOLDER}}."
echo "  2. See docs/PLACEHOLDERS.md for the full list."
echo "  3. These files are git-ignored so your personal data stays local."
