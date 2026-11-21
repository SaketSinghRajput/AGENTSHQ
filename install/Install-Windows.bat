@echo off
title AgentHQ installer (Windows)
echo Installing AgentHQ (all teams, agents and skills) into Claude Code...
echo.
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0install.ps1"
if errorlevel 1 (
  echo.
  echo [FAILED] Install did not finish. See the error above.
)
pause
