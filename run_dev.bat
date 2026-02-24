@echo off
REM Run backend and Flutter (Chrome) for development
cd /d "%~dp0backend"
start cmd /k "npm run dev"
cd /d "%~dp0flutter-app"
start cmd /k "flutter pub get && flutter run -d chrome"
pause
