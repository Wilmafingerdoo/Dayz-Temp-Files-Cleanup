@echo off
::This one will delete all the files in the DayZ temp folder and all the files in the subfolders then delete those subfolders.

::SET THE PATH TO YOUR DAYZ TEMP FOLDER HERE (SHOULD ONLY NEED TO CHANGE THE YOURUSERNAME PART BUT CHECK!
set PATH="C:\Users\YOURUSERNAME\AppData\Local\DayZ\*.*"
del /s /q %PATH%
for /d %%a in (%PATH%) do rmdir "%%a" /s /q
exit