# setup.ps1 — copies templates into your real working files.
# Safe: it will NOT overwrite files that already exist.
# Run from the repo root:  ./scripts/setup.ps1

$ErrorActionPreference = "Stop"
$root = Split-Path -Parent $PSScriptRoot

$map = @{
    "templates/intake-form.template.md"     = "intake-form.md"
    "templates/soulcode.template.md"        = "soulcode.md"
    "templates/AGENT_REGISTRY.template.md"  = "AGENT_REGISTRY.md"
    "templates/CURRENT_CONTEXT.template.md" = "CURRENT_CONTEXT.md"
    "templates/SESSION_LOG.template.md"     = "SESSION_LOG.md"
}

Write-Host "Personal Agent OS — setup" -ForegroundColor Cyan
Write-Host "Generating working files from templates..." -ForegroundColor Cyan

foreach ($pair in $map.GetEnumerator()) {
    $src = Join-Path $root $pair.Key
    $dst = Join-Path $root $pair.Value
    if (-not (Test-Path $src)) {
        Write-Warning "Missing template: $($pair.Key) — skipped."
        continue
    }
    if (Test-Path $dst) {
        Write-Host "  - $($pair.Value) already exists, skipping (won't overwrite)." -ForegroundColor Yellow
    } else {
        Copy-Item $src $dst
        Write-Host "  + Created $($pair.Value)" -ForegroundColor Green
    }
}

Write-Host ""
Write-Host "Next steps:" -ForegroundColor Cyan
Write-Host "  1. Open each new file and replace every {{PLACEHOLDER}}."
Write-Host "  2. See docs/PLACEHOLDERS.md for the full list."
Write-Host "  3. These files are git-ignored so your personal data stays local."
