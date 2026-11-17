# 1) PATH for claude.exe
$bin = Join-Path $env:USERPROFILE ".local\bin"
$p = [Environment]::GetEnvironmentVariable("Path","User")
if ($p -notlike "*$bin*") { [Environment]::SetEnvironmentVariable("Path", "$p;$bin", "User"); Write-Host "[OK] Added $bin to PATH" } else { Write-Host "[OK] PATH already has $bin" }
# 2) Allow local scripts (fixes the profile/oh-my-posh error)
Set-ExecutionPolicy -Scope CurrentUser RemoteSigned -Force; Write-Host "[OK] Execution policy RemoteSigned (current user)"
# 3) Turn OFF auto CTO mode, install /cto command instead
$f = Join-Path $env:USERPROFILE ".claude\settings.json"
if (Test-Path $f) { $j = Get-Content $f -Raw | ConvertFrom-Json; $j.PSObject.Properties.Remove("agent"); [IO.File]::WriteAllText($f, ($j | ConvertTo-Json -Depth 20)); Write-Host "[OK] Removed auto CTO mode (user)" }
$root = Split-Path $PSScriptRoot -Parent
$pf = Join-Path $root ".claude\settings.json"
Copy-Item (Join-Path $root "team\settings.json") $pf -Force; Write-Host "[OK] Project settings updated"
foreach ($d in @((Join-Path $env:USERPROFILE ".claude\skills\cto"), (Join-Path $root ".claude\skills\cto"))) {
  New-Item -ItemType Directory -Force -Path $d | Out-Null
  Copy-Item (Join-Path $root "team\skills\cto\SKILL.md") $d -Force
}
Write-Host "[OK] /cto command installed"
Write-Host ""
Write-Host "Close this window, open a NEW terminal, type: claude   then: /cto"
