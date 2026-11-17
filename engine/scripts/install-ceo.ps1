$root = Split-Path $PSScriptRoot -Parent
$teams = "team-ceo","team-cfo","team-cmo","team-coo"
foreach ($t in @((Join-Path $env:USERPROFILE ".claude"), (Join-Path $root ".claude"))) {
  New-Item -ItemType Directory -Force -Path (Join-Path $t "agents"), (Join-Path $t "skills") | Out-Null
  foreach ($tm in $teams) {
    $src = Join-Path $root $tm
    if (Test-Path $src) {
      Copy-Item (Join-Path $src "agents\*.md") (Join-Path $t "agents") -Force
      Copy-Item (Join-Path $src "skills\*") (Join-Path $t "skills") -Recurse -Force
    }
  }
  Write-Host "[OK] CEO (+CFO, CMO, COO) teams installed in $t"
}
Write-Host "Open a NEW terminal: claude  then  /ceo"
