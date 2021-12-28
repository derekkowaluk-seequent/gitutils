@echo off
setlocal enableextensions enabledelayedexpansion

set _params=
FOR %%A IN (%*) DO (
	set _params=!_params! %%A
)

ENDLOCAL & SET _MYPARAMS=%_params%
for /f %%b in ('fcd.py %_MYPARAMS%') do (
	cd %%b
)
