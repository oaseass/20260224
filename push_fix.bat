@echo off
cd /d "%~dp0"
REM Ensure we are in repo root (this .bat lives in C:\Users\지니\Desktop\운명앱)
echo Working directory: %CD%

REM Switch/create main branch and add files
git checkout -B mainngit add app/api/analyze/route.ts Dockerfile

REM Commit if there are staged changesngit diff --staged --quiet || (
  git commit -m "chore: add root Dockerfile + fix Insight type rename" --no-verify
)
nREM Push to origin
git push origin main
echo Done. If git asked for credentials, please complete auth in the spawned window.
echo Press any key to close...
pause > nul
