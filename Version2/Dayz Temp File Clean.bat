@echo off
::This one will just delete the files in the DayZ temp folder and not touch the subfolders

::SET THE PATH TO YOUR DAYZ TEMP FOLDER HERE (SHOULD ONLY NEED TO CHANGE THE YOURUSERNAME PART BUT CHECK!
set PATH="C:\Users\YOURUSERNAME\AppData\Local\DayZ\*.*"
del /q %PATH%
exit