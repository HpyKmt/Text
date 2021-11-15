@echo off
echo *******Message Logger**************************************
echo Type in your activity or thought process.
echo Your entry will be saved along with date/time on text file.
echo ***********************************************************

rem clear the log file contents
set "filename=msglog.txt"
type NUL > %filename%

rem infinite loop from here
:loop

rem get user input
set /p "message=>>> "

rem add date and time to the message
set log=%date% %time% %message%

rem print the entry on console
echo %log%

rem append the entry to the log file
echo %log% >> msglog.txt

goto loop
