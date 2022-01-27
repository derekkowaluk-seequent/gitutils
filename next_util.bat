@echo off

set _file_in_path=%1

if not defined _file_in_path (
	echo Nothing to Do!
	exit /b 0
)

set _tail=%*
call set _tail=%%_tail:*%1=%%

for /f "delims==" %%a in ('where %_file_in_path%') do set file_path_=%%a

if not defined file_path_ (
	echo Not Found!
	exit /b 0
)

if "%_tail%" equ " v" (
	echo open visual studio
	set "_tail=devenv /Edit"
)

if "%_tail%" equ " s" (
	echo open Sublime Text
	set "_tail=subl"
)

if not defined _tail (
	echo %file_path_%
	exit /b 0
)



call %_tail% %file_path_%