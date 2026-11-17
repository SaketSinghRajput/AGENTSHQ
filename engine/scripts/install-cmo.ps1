$root = Split-Path $PSScriptRoot -Parent
$targets = @((Join-Path $env:USERPROFILE ".claude"), (Join-Path $root ".claude"))
foreach ($t in $targets) {
  New-Item -ItemType Directory -Force -Path (Join-Path $t "agents"), (Join-Path $t "skills") | Out-Null
  Copy-Item (Join-Path $root "team-cmo\agents\*.md") (Join-Path $t "agents") -Force
  Copy-Item (Join-Path $root "team-cmo\skills\*") (Join-Path $t "skills") -Recurse -Force
  Write-Host "[OK] CMO team installed in $t"
}
Write-Host "Open a NEW terminal: claude  then  /cmo"
