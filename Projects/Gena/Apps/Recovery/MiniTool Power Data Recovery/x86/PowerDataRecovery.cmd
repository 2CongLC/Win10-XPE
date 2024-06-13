@echo off
pushd %~dp0
SET CurDir=%CD%\
if exist %SystemRoot%\SysWOW64\wdscore.dll goto Win764
goto Win732
:Win764
reg import key.reg /reg:64
start "%CurDir%" "PowerDataRecovery.exe"
exit
:Win732
reg import key.reg /reg:32
start "%CurDir%" "PowerDataRecovery.exe"
exit

