@echo off
cd /D [DRIVE_LETTER]:\output\
	powershell -NoProfile -ExecutionPolicy Bypass -Command "& '..\p.ps1' "
exit
