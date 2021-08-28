# Ballchasing Uploader For Rocket League replays
Auto-upload to Ballchasing.com using Windows batch file, so there are no dependencies to install, simply run the batch file.

Forgive me if this batch script is not very sophisticated, I typically work on Linux and I would've just written a Python script, but to make this script more useful for people who do not want to learn to install Python and Python packages, I created this set of batch scripts. You need to set your API key and replay directory before starting, I tried to make that as easy as possible too, by just storing those variables in two different single-line files. 

If you need any help getting this working, just let me know!

## Getting Started

NOTE: both `replay_dir.txt` and `api_key.txt` should contain a single line of text and no blank lines.

1. Update the file `replay_dir.txt` with your replay file directory path. Most likely the only thing you need to change is the username in the default file.
2. Update the API key in `api_key.txt`

## Upload all replay files

Double-click `upload_all.bat` and let it run.

## Upload new replay files automatically

Double-click `ballchasing_upload.bat` and leave it running. This will upload all new files once per hour.

## Run auto-upload process on startup

You need to add the script `ballchasing_upload.bat` to the startup directory.
1. Open the "Run" app
2. Enter `shell:startup` into the Run app to open the Startup folder
3. Create a shortcut for `ballchasing_upload.bat`
4. Copy the shortcut into the Startup folder

### Optionally minimize on startup
1. Right-click the new shortcut
2. Open "Properties"
3. On the "Shortcut" tab, find "Run" and choose "Minimized"
