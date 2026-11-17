$root = Split-Path $PSScriptRoot -Parent
foreach ($t in @((Join-Path $env:USERPROFILE ".claude"), (Join-Path $root ".claude"))) {
  New-Item -ItemType Directory -Force -Path (Join-Path $t "agents"), (Join-Path $t "skills") | Out-Null
  Copy-Item (Join-Path $root "team-cfo\agents\*.md") (Join-Path $t "agents") -Force
  Copy-Item (Join-Path $root "team-cfo\skills\*") (Join-Path $t "skills") -Recurse -Force
  Write-Host "[OK] CFO team installed in $t"
}
Write-Host "Open a NEW terminal: claude  then  /cfo"
