@echo off
call setup_colors.bat

set _open_all=%1

if not defined _open_all (
	goto show_all
)


call git_root.bat rootdir

pushd %rootdir%

echo %rootdir%

chgcolor %_CLR_INFO%
for /f "delims==" %%a in ('git diff --name-only origin/main...HEAD') do devenv /Edit %%a


chgcolor %_CLR_ORIG%

popd

exit /b 0

:show_all
chgcolor %_CLR_INFO%
for /f "delims==" %%a in ('git diff --name-only origin/main...HEAD') do echo %%a
chgcolor %_CLR_ORIG%