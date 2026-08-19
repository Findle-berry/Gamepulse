@echo off
set "NODE=C:\Users\Finbl\.cache\codex-runtimes\codex-primary-runtime\dependencies\node\bin\node.exe"
if not exist "%NODE%" (
  echo Node.js was not found in the bundled runtime.
  echo Install Node.js 18 or newer from https://nodejs.org, then run: npm start
  pause
  exit /b 1
)
echo Starting GamePulse at http://localhost:3000
"%NODE%" "%~dp0server.js"
pause
