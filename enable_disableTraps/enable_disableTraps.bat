@echo off
setlocal enabledelayedexpansion

:: Change this to your service name
set service=CyveraService

:: Get state of service ("RUNNING"?)
for /f "tokens=1,3 delims=: " %%a in ('sc query %service%') do (
  if "%%a"=="STATE" set state=%%b
)

:: If running: stop 
if "%state%"=="RUNNING" (
echo Stopping Service
   cd "c:\Program Files\Palo Alto Networks\Traps\"
   echo "Replace with your PASSWORD"| Cytool runtime stop
   pause
)
:: If stopped: start
if "%state%"=="STOPPED" (
   echo Starting Service
   cd "c:\Program Files\Palo Alto Networks\Traps\"
   Cytool runtime start
   pause
)


