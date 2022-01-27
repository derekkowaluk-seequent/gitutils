@echo off

set _file_in_path=%1

if not defined EDITOR (
	echo You need the environment variable EDITOR to be configured
	exit
)

if not defined _file_in_path (
	echo Nothing to Do!
	exit
)

for /f "delims==" %%a in ('where %_file_in_path%') do set file_path_=%%a

%EDITOR% %file_path_%