@echo off
setlocal
title AgentHQ Dashboard launcher
set "HQ=%USERPROFILE%\.claude\agenthq"
if not exist "%HQ%" mkdir "%HQ%"
copy /Y "%~dp0engine\dashboard\index.html" "%HQ%\dashboard.html" >nul
copy /Y "%~dp0engine\dashboard\agent_team.json" "%HQ%\agent_team.json" >nul
copy /Y "%~dp0engine\scripts\dashboard_server.py" "%HQ%\dashboard_server.py" >nul

REM pick a python command
set "PY=python"
where python >nul 2>&1 || set "PY=py"

REM seed a demo status so you can see it render (safe to overwrite later by real runs)
%PY% -c "import json,time,os;p=os.path.expanduser(r'~/.claude/agenthq/status.json');json.dump({'active':{'d1':{'name':'backend-engineer','task':'Demo card - the dashboard is live','start':time.time()-25},'d2':{'name':'worker-local','task':'Summarising notes on the local model','start':time.time()-6}},'recent':[{'name':'redteam-api-security','task':'Sample finished task','secs':42}],'updated':time.time()},open(p,'w'))"

start "AgentHQ Dashboard server" %PY% "%HQ%\dashboard_server.py"
timeout /t 2 >nul
start "" http://127.0.0.1:4765/
echo.
echo Dashboard opening at http://127.0.0.1:4765/
echo Keep the "AgentHQ Dashboard server" window open; close it to stop the dashboard.
echo.
pause
