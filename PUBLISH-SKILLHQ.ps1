$ErrorActionPreference = 'Stop'

Write-Host "AIandRealtors Agent OS Lite — SkillHQ publisher" -ForegroundColor Cyan

if (-not (Get-Command npm -ErrorAction SilentlyContinue)) {
    throw "Node.js/npm is required. Install Node.js first, then rerun this script."
}

if (-not (Get-Command skillhq -ErrorAction SilentlyContinue)) {
    Write-Host "Installing SkillHQ CLI..." -ForegroundColor Yellow
    npm install -g @skill-hq/cli
}

Write-Host "Checking SkillHQ authentication..." -ForegroundColor Yellow
skillhq auth status
if ($LASTEXITCODE -ne 0) {
    Write-Host "Opening SkillHQ login..." -ForegroundColor Yellow
    skillhq auth login
}

$skillPath = Join-Path $PSScriptRoot 'agent-os-lite'
if (-not (Test-Path (Join-Path $skillPath 'SKILL.md'))) {
    throw "Could not find agent-os-lite/SKILL.md next to this script."
}

Write-Host "Validating Agent OS Lite..." -ForegroundColor Yellow
skillhq validate $skillPath
if ($LASTEXITCODE -ne 0) {
    throw "SkillHQ validation failed. Fix the reported issue before publishing."
}

Write-Host "Publishing Agent OS Lite as a free SkillHQ listing..." -ForegroundColor Green
skillhq publish $skillPath --price 0 --category productivity --tags "real-estate,crm,sales,mls,buyers,sellers,follow-up,productivity" --short-description "Free CRM + MLS workflow foundation for real-estate agents using Claude, ChatGPT, Codex, or compatible Agent Skills environments."

if ($LASTEXITCODE -ne 0) {
    throw "SkillHQ publish did not complete successfully. Review the CLI message above."
}

Write-Host "Done. Open https://skillhq.dev/my-skills to verify the listing." -ForegroundColor Green
