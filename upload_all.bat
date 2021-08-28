@echo off
SET filename=%~dp0%replay_dir.txt
FOR /F "tokens=* delims=" %%x in (%filename%) DO SET source_path=%source_path%%%x
cd %source_path%
forfiles /C "cmd /c CALL %~dp0%upload_single_file.bat @file"
pause