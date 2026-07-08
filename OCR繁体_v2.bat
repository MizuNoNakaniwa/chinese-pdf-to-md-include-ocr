@echo off
chcp 65001 >nul
cd /d "%~dp0"
py -3.12 convert_ocr_繁体.py
if errorlevel 9009 py convert_ocr_繁体.py
echo.
pause
