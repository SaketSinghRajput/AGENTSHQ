# AgentHQ installer (Windows). Installs all teams into project + user scope, then wires core settings.
$ErrorActionPreference = "Stop"
$repo = Split-Path $PSScriptRoot -Parent          # repo root (parent of install\)
$proj = Join-Path $repo ".claude"
$user = Join-Path $env:USERPROFILE ".claude"
foreach ($base in @($proj,$user)) {
  New-Item -ItemType Directory -Force -Path (Join-Path $base "agents"), (Join-Path $base "skills") | Out-Null
  Get-ChildItem (Join-Path $repo "teams") -Directory | ForEach-Object {
    $a = Join-Path $_.FullName "agents"; $s = Join-Path $_.FullName "skills"
    if (Test-Path $a) { Get-ChildItem $a -Filter *.md | Copy-Item -Destination (Join-Path $base "agents") -Force }
    if (Test-Path $s) { Copy-Item (Join-Path $s "*") (Join-Path $base "skills") -Recurse -Force }
  }
  Write-Host "[OK] teams installed into $base"
}
# project settings template (agent teams on, routing, permissions)
$cfg = Join-Path $repo "teams\cto\settings.json"
if (Test-Path $cfg) { Copy-Item $cfg (Join-Path $proj "settings.json") -Force; Write-Host "[OK] project settings.json" }
# core settings: env + dashboard + logging hooks, into user scope
& (Join-Path $repo "engine\scripts\set-core-settings.ps1")
Write-Host ""
Write-Host "Done. Open a NEW terminal in this folder:  claude   then type  /hq"
