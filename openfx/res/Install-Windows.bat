@echo off
chcp 65001 >nul
rem Installs fpSup2060v4.ofx.bundle for DaVinci Resolve. Right-click > Run as administrator.
net session >nul 2>&1
if errorlevel 1 (
  echo Right-click Install-Windows.bat and choose "Run as administrator".
  echo 請對 Install-Windows.bat 按右鍵，選「以系統管理員身分執行」。
  pause
  exit /b 1
)
set "DEST=%CommonProgramFiles%\OFX\Plugins"
if not exist "%DEST%" mkdir "%DEST%"
if exist "%DEST%\fpSup2060v4.ofx.bundle" rmdir /s /q "%DEST%\fpSup2060v4.ofx.bundle"
xcopy /e /i /q /y "%~dp0fpSup2060v4.ofx.bundle" "%DEST%\fpSup2060v4.ofx.bundle" >nul
if errorlevel 1 (
  echo Copy failed. Is DaVinci Resolve still open? Close it and try again.
  pause
  exit /b 1
)
echo Installed to %DEST%\fpSup2060v4.ofx.bundle. Restart DaVinci Resolve.
echo 已安裝。請重開 DaVinci Resolve。
pause
