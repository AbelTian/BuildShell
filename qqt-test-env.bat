@echo off
::!bat cmd
::create mm link
::c:\windows\mm.bat
::@echo off
::call xxx\pymake.bat %*



::env effect
call mm set env cur "qt.android"
::do command in this env
call mm k qqt.build
::env reset (no need)



::env effect
call mm set env cur "android.x86"
::do command in this env
call mm k qqt.build
::env reset (no need)



::env effect
call mm set env cur android.mobile
::do command in this env
call mm k qqt.build
::env reset (no need)




call :env_effect qt.android
::do command in this env
call java -version
call :env_reset

:exit
exit /b 0


:env_effect
::env effect
call mm set env cur %1
call mm export
for /f "" %%a in ('mm source root') do call %%a\env_effect.bat
goto :eof

:env_reset
::env reset (need)
for /f "" %%a in ('mm source root') do call %%a\env_unset.bat
goto :eof