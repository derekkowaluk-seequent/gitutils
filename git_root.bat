@echo off

set _rootvarname=%1

call is_repo.bat
if %ERRORLEVEL% neq 0 (
	exit /b %ERRORLEVEL% 
)

for /f "delims==" %%a in ('git root') do set gitroot_=%%a

if %ERRORLEVEL% neq 0 (
	echo %0 failed
	exit /b %ERRORLEVEL% 
)

:exit
:: Return the value we found
if defined _rootvarname (
	set "%_rootvarname%=%gitroot_:/=\%"
) else (
	echo Root path: %gitroot_:/=\%
)