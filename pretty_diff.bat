@echo off

call setup_colors.bat

chgcolor %_CLR_INFO%
for /f "delims==" %%a in ('git diff --name-only origin/main...HEAD') do git log -n1 --pretty=format:"%%Cblue%%h%%Creset %%Cgreen(%%cr)%%Creset -%%C(yellow)%%d%%Creset %%s" %%a
chgcolor %_CLR_ORIG%