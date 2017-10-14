@echo off

::env effect
call mm set cur env qt.android
call mm export
for /f "" %%a in ('mm source root') do call %%a\env_effect.bat
::do command in this env


::env reset (need)
for /f "" %%a in ('mm source root') do call %%a\env_unset.bat


::env effect
call mm set cur env qt.android
::do command in this env
call mm exec "java -version"
::env reset (no need)