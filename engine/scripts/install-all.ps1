$root = Split-Path $PSScriptRoot -Parent
$zip = Join-Path $root "teams-update.zip"
if (Test-Path $zip) { Expand-Archive -Path $zip -DestinationPath $root -Force; Write-Host "[OK] Unpacked teams-update.zip" }
$teams = Get-ChildItem -Path $root -Directory | Where-Object { $_.Name -like "team*" }
foreach ($t in @((Join-Path $env:USERPROFILE ".claude"), (Join-Path $root ".claude"))) {
  New-Item -ItemType Directory -Force -Path (Join-Path $t "agents"), (Join-Path $t "skills") | Out-Null
  foreach ($tm in $teams) {
    $a = Join-Path $tm.FullName "agents"; $s = Join-Path $tm.FullName "skills"
    if (Test-Path $a) { Get-ChildItem $a -Filter *.md | Copy-Item -Destination (Join-Path $t "agents") -Force }
    if (Test-Path $s) { Copy-Item (Join-Path $s "*") (Join-Path $t "skills") -Recurse -Force }
  }
  Write-Host "[OK] All teams installed in $t"
}
Write-Host "Teams: $($teams.Name -join ', ')"
Write-Host "Open a NEW terminal: claude  then  /hq"
Copy-Item (Join-Path $root "team\settings.json") (Join-Path $root ".claude\settings.json") -Force
& (Join-Path $PSScriptRoot "set-core-settings.ps1")
Write-Host "Tip: run /evolve weekly so skills improve from real use."
