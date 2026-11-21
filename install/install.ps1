# AgentHQ installer (Windows). Installs every team's agents + skills into project and user scope,
# then wires core settings (routing env, logging, live dashboard hooks). Safe to re-run.
$ErrorActionPreference = "Stop"
$repo = Split-Path $PSScriptRoot -Parent          # repo root (parent of install\)
$proj = Join-Path $repo ".claude"
$user = Join-Path $env:USERPROFILE ".claude"

# prerequisites (warn only: files still install without them)
if (-not (Get-Command claude -ErrorAction SilentlyContinue)) { Write-Host "[WARN] 'claude' not found on PATH. Install Claude Code first: https://docs.claude.com/claude-code" -ForegroundColor Yellow }
if (-not (Get-Command python -ErrorAction SilentlyContinue)) { Write-Host "[WARN] 'python' not found on PATH. Dashboard and hooks need Python 3." -ForegroundColor Yellow }

# all teams -> agents + skills
$teams = Get-ChildItem (Join-Path $repo "teams") -Directory
foreach ($base in @($proj,$user)) {
  New-Item -ItemType Directory -Force -Path (Join-Path $base "agents"), (Join-Path $base "skills") | Out-Null
  foreach ($t in $teams) {
    $a = Join-Path $t.FullName "agents"; $s = Join-Path $t.FullName "skills"
    if (Test-Path $a) { Get-ChildItem $a -Filter *.md | Copy-Item -Destination (Join-Path $base "agents") -Force }
    if (Test-Path $s) { Copy-Item (Join-Path $s "*") (Join-Path $base "skills") -Recurse -Force }
  }
  Write-Host "[OK] $($teams.Count) teams installed into $base"
}
$nAgents = (Get-ChildItem (Join-Path $repo "teams\*\agents\*.md")).Count
$nSkills = (Get-ChildItem (Join-Path $repo "teams\*\skills") -Directory | Get-ChildItem -Directory).Count

# project settings template (agent teams on, routing, permissions)
$cfg = Join-Path $repo "teams\cto\settings.json"
if (Test-Path $cfg) { Copy-Item $cfg (Join-Path $proj "settings.json") -Force; Write-Host "[OK] project settings.json" }

# operating manual: local CLAUDE.md (not versioned) that imports OPERATING-MANUAL.md
$cm = Join-Path $repo "CLAUDE.md"
if (-not (Test-Path $cm)) { Set-Content -Path $cm -Value "@OPERATING-MANUAL.md" -Encoding UTF8; Write-Host "[OK] CLAUDE.md -> OPERATING-MANUAL.md" }

# core settings: env + dashboard + logging hooks, into user scope
& (Join-Path $repo "engine\scripts\set-core-settings.ps1")

Write-Host ""
Write-Host "Installed $nAgents agents and $nSkills skills from $($teams.Count) teams." -ForegroundColor Green
Write-Host "Open a NEW terminal in this folder:  claude   then type  /hq"
