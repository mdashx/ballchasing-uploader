@echo off
SET filename=%~dp0%replay_dir.txt
FOR /F "tokens=* delims=" %%x in (%filename%) DO SET source_path=%source_path%%%x
cd %source_path%
:loop
	forfiles /D +0 /C "cmd /c CALL %~dp0%upload_single_file.bat @file"
	timeout /t 3600
goto loop
pause