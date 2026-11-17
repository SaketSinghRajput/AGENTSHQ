# Makes every `claude` session on this PC start in CTO mode (adds "agent": "cto" to user settings)
$dir = Join-Path $env:USERPROFILE ".claude"
New-Item -ItemType Directory -Force -Path $dir | Out-Null
$f = Join-Path $dir "settings.json"
if (Test-Path $f) { $j = Get-Content $f -Raw | ConvertFrom-Json } else { $j = [pscustomobject]@{} }
$j | Add-Member -NotePropertyName agent -NotePropertyValue "cto" -Force
[IO.File]::WriteAllText($f, ($j | ConvertTo-Json -Depth 20))
Write-Host "Global CTO mode set in $f"
