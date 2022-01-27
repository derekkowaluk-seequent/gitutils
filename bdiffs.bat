@echo off


set _open_command=%~1

if not defined _open_command (
	goto show_all
)

if "%~1" equ "v" (
	echo open visual studio
	set "_open_command=devenv /Edit"
)

if "%~1" equ "s" (
	echo open Sublime Text
	set "_open_command=subl"
)


call git_root.bat rootdir

pushd %rootdir%

echo %rootdir%


for /f "delims==" %%a in ('git diff --name-only origin/main...HEAD') do %_open_command% %%a



popd

exit /b 0

:show_all

for /f "delims==" %%a in ('git diff --name-only origin/main...HEAD') do echo %%a
