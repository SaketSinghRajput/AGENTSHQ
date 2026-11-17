@echo off
title AgentHQ installer
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0install.ps1"
pause
