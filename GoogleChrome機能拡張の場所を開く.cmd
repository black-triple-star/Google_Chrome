rem #####################################
rem ���s�R�[�h��CR+LF�łȂ��Ɠ��삵�܂���
rem #####################################
rem chcp 1200 & rem "UTF-16"
chcp 65001 & rem "UTF-8"
chcp 932 & rem "CP932"
rem chcp 65001 ����ƁArem �� echo �������������邱�Ƃ�����B���̏ꍇ�A��d���p���ň͂߂΂悢�B

@echo off
cls

cd /d "%~dp0"
set HERE=%~dp0
rem echo %HERE:~-1%
if "%HERE:~-1%"=="\" (set HERE=%HERE:~0,-1%)
rem echo %HERE%
echo %CD%
title "%~0"
rem setlocal ENABLEDELAYEDEXPANSION

rem set PATH="%CD%";%PATH%
rem echo %PATH%

rem ********************************************************************************


set OBJECT=%USERPROFILE%\AppData\Local\Google\Chrome\User Data\Default\Extensions
if exist "%OBJECT%\*" ( %WINDIR%\explorer.exe /root,/select,"%OBJECT%" ) else ( if exist "%OBJECT%" ( %WINDIR%\explorer.exe /select,"%OBJECT%" ) else ( echo "%OBJECT%" �͑��݂��Ȃ��B))


rem cd /d "%OBJECT%"
rem start .
