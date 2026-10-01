@echo off
setlocal enabledelayedexpansion

set /p day="Enter current day: "
set /p hour="Enter current hour: "
set /p minute="Enter current minute: "

set /p hours_add="How many hours to advance?: "
set /p minutes_add="How many minutes to advance?: "

set /a total_minutes = minute + minutes_add
set /a extra_hours_from_min = total_minutes / 60
set /a final_minute = total_minutes %% 60

set /a total_hours = hour + hours_add + extra_hours_from_min
set /a extra_days = total_hours / 24
set /a final_hour = total_hours %% 24

set /a final_day = day + extra_days

set "cmd=settime !final_day! !final_hour! !final_minute!"

echo.
echo ===============================================
echo Command to enter in the in-game console (F1):
echo.
echo !cmd!
echo ===============================================

<nul set /p="!cmd!" | clip

echo.
echo (The command has been copied to your clipboard!)
echo.
pause