@echo off

call setup_colors.bat


for /f "delims==" %%a in ('git diff --name-only origin/main...HEAD') do (
	chgcolor %_CLR_INFO%
	echo %%a
	git log -n1 --pretty=format:"%%Cblue%%h%%Creset %%Cgreen(%%cr)%%Creset -%%C(yellow)%%d%%Creset %%s" %%a
)
chgcolor %_CLR_ORIG%