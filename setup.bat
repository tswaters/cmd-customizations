@echo off

echo copying doskey-stuff to user profile directory...
copy "doskey-stuff.bat" %userprofile% 1>NUL
echo done.

echo applying registry setting changes...
regedit /s registry-settings.reg
echo done.

echo adding autohotkey fix...
If exist "%ProgramFiles(x86)%\AutoHotkey\AutoHotkey.exe" (
  findstr /g:paste-fix.ahk %UserProfile%\Documents\AutoHotkey.ahk >nul 2>&1
  if errorlevel 1 (echo[ & type paste-fix.ahk) >> %UserProfile%\Documents\AutoHotkey.ahk
)

If exist "%ProgramFiles%\AutoHotkey\AutoHotkey.exe" (
  findstr /g:paste-fix.ahk %UserProfile%\Documents\AutoHotkey.ahk >nul 2>&1
  if errorlevel 1 (echo[ & type paste-fix.ahk) >> %UserProfile%\Documents\AutoHotkey.ahk
)
echo done.