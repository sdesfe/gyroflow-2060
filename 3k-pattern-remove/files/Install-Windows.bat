@echo off
rem Installs the 3K Pattern Remove v1 DCTL for DaVinci Resolve (Windows).
rem Right-click this file and choose "Run as administrator".
net session >nul 2>&1
if errorlevel 1 (
  echo Right-click Install-Windows.bat and choose "Run as administrator".
  pause
  exit /b 1
)
set "DEST=%ProgramData%\Blackmagic Design\DaVinci Resolve\Support\LUT\3K Pattern Remove"
if not exist "%DEST%" mkdir "%DEST%"
copy /y "%~dp03K Pattern Remove v1.dctl" "%DEST%\" >nul
if errorlevel 1 (
  echo Copy failed. Is DaVinci Resolve installed?
  pause
  exit /b 1
)
echo Installed to %DEST%
echo Restart DaVinci Resolve, then on the Color page add the DCTL effect to a node
echo and choose "3K Pattern Remove" ^> "3K Pattern Remove v1" in its DCTL list.
pause
