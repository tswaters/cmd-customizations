
# Setup

Run setup.bat

This does the following:

* merges registry-settings.reg (requires admin rights)
* copies doskey-stuff.bat to user's profile directory
* if autohotkey is installed, appends paste-fix.afk to it

That's about it!

# Contains the following

## registry-settings.reg

various registry settings relating to cmd.exe
includes colors and adding doskey-stuff.bat to autorun

## paste-fix.ahk

autohotkey script to support ctrl-v and shift-ins in command prompt
this is appended to %UserProfile%\Documents\AutoHotkey.ahk
This is where it is in Win7, not sure about other versions.

## doskey-stuff.bat

various doskey mappings to mimic unix-like commands in cmd.exe
this is setup to run every time cmd.exe starts

