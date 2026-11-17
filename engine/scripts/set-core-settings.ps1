# AgentHQ core settings: model routing env, agent-use logging, and the live dashboard hooks.
# Keeps existing user settings; safe to re-run.  Located at <repo>\engine\scripts\.
$engine = Split-Path $PSScriptRoot -Parent          # <repo>\engine
$repo   = Split-Path $engine -Parent                # <repo>
$home2  = $env:USERPROFILE
$hq     = Join-Path $home2 ".claude\agenthq"
New-Item -ItemType Directory -Force -Path $hq | Out-Null

Copy-Item (Join-Path $engine "scripts\local_llm.py")        $hq -Force
Copy-Item (Join-Path $engine "scripts\log_agent_use.py")    $hq -Force
Copy-Item (Join-Path $engine "scripts\agent_status.py")     $hq -Force
Copy-Item (Join-Path $engine "scripts\dashboard_server.py") $hq -Force
Copy-Item (Join-Path $engine "dashboard\index.html")        (Join-Path $hq "dashboard.html") -Force
Copy-Item (Join-Path $engine "dashboard\agent_team.json")   $hq -Force

$f = Join-Path $home2 ".claude\settings.json"
if (Test-Path $f) { $j = Get-Content $f -Raw | ConvertFrom-Json } else { $j = [pscustomobject]@{} }
if (-not $j.env) { $j | Add-Member -NotePropertyName env -NotePropertyValue ([pscustomobject]@{}) -Force }
$j.env | Add-Member -NotePropertyName CLAUDE_CODE_MAX_SUBAGENT_SPAWN_DEPTH -NotePropertyValue "3" -Force
$j.env | Add-Member -NotePropertyName AGENTHQ_LOCAL_MODEL -NotePropertyValue "qwen3.5" -Force

$status = (Join-Path $hq "agent_status.py") -replace '\\','/'
$usage  = (Join-Path $hq "log_agent_use.py") -replace '\\','/'
function hookcmd($p){ [pscustomobject]@{ hooks = @([pscustomobject]@{ type = "command"; command = "python `"$p`"" }) } }
$both = [pscustomobject]@{ hooks = @(
  [pscustomobject]@{ type="command"; command="python `"$status`"" },
  [pscustomobject]@{ type="command"; command="python `"$usage`"" }
)}
if (-not $j.hooks) { $j | Add-Member -NotePropertyName hooks -NotePropertyValue ([pscustomobject]@{}) -Force }
$j.hooks | Add-Member -NotePropertyName SubagentStart -NotePropertyValue @((hookcmd $status)) -Force
$j.hooks | Add-Member -NotePropertyName SubagentStop  -NotePropertyValue @($both)            -Force
$j.hooks | Add-Member -NotePropertyName Stop          -NotePropertyValue @((hookcmd $status)) -Force

[IO.File]::WriteAllText($f, ($j | ConvertTo-Json -Depth 20))
foreach ($d in "learnings\proposals\agents","learnings\history") { New-Item -ItemType Directory -Force -Path (Join-Path $repo $d) | Out-Null }
Write-Host "[OK] Routing, logging and live dashboard hooks applied to $f"
Write-Host "     The dashboard opens automatically when a team starts (http://127.0.0.1:4765/)."
