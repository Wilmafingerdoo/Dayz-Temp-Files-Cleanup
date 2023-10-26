@echo off
::This one will ask you to confirm you are sure 
::then delete all the files in the DayZ temp folder and all the files in the subfolders then delete those subfolders. 
::And give you a message saying finished and press any key to continue (exit).

setlocal
color c

::SET THE PATH TO YOUR DAYZ TEMP FOLDER HERE (SHOULD ONLY NEED TO CHANGE THE YOURUSERNAME PART BUT CHECK!)
set PATH="C:\Users\YOURUSERNAME\AppData\Local\DayZ\*.*"

::PROMPT TO CONFIRM IF YOU REALLY WANT TO DELTE THE FILES IN THE FOLDER ABOVE
:PROMPT
SET /P AREYOUSURE=ARE YOU SURE YOU WANT TO DELETE THE CONTENTS OF %PATH% (Y/[N])?
IF /I "%AREYOUSURE%" NEQ "Y" GOTO END

::IF YOU SAY YES TO PROMPT THIS RUNS
del /s /q %PATH%
for /d %%a in (%PATH%) do rmdir "%%a" /s /q
endlocal
color a
echo Finished!!
pause
exit

::IF YOU SAY NO TO PROMPT IT DOES NOTHING OTHER THAT GIVE YOU A MESSAGE TO EXIT
:END
endlocal
color C
echo EXITING WITHOUT DELETING ANYTHING!!
pause
exit