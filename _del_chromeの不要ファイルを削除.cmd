rem #####################################
rem ���s�R�[�h��CR+LF�łȂ��Ɠ��삵�܂���
rem #####################################
chcp 65001
chcp 932

rem chrome�̕s�v�t�@�C�����폜

@echo off
cls


cd /d "%~dp0"

set  SAVE_DIR=C:\Temp
if not exist "%SAVE_DIR%" (mkdir "%SAVE_DIR%")

set DELETE_FILE=%SAVE_DIR%\del.cmd

rem ���s�����
echo.>"%DELETE_FILE%"

rem ����̊g���q�̃t�@�C�����폜����
for /f "delims=" %%I in ('dir /b /s /a-d  *.�_�E�����[�h' ) do (
	 echo "%%I"
	 echo del /f /q "%%I">>"%DELETE_FILE%"
)

rem for /f "delims=" %%I in ('dir /b /s /a-d  f*.txt' ) do (
rem 	 echo del /f /q "%%I">>"%DELETE_FILE%"
rem )

for /f "delims=" %%I in ('dir /b /s /a-d  f.txt' ) do (
	 echo "%%I"
	 echo del /f /q "%%I">>"%DELETE_FILE%"
)

for /f "delims=" %%I in ('dir /b /s /a-d  f^(*^).txt' ) do (
	 echo "%%I"
	 echo del /f /q "%%I">>"%DELETE_FILE%"
)


for /f "delims=" %%I in ('dir /b /s /a-d  adsct*' ) do (
	 echo "%%I"
	 echo del /f /q "%%I">>"%DELETE_FILE%"
)

rem �g���q���Ȃ��t�@�C�����폜
for /f "delims=" %%I in ('dir /b /s /a-d ' ) do (
	rem echo "%%~xI"
	if "%%~xI"=="" (
		echo "%%I"
		echo del /f /q  "%%I">>"%DELETE_FILE%"
	)
)
echo del /f /q "%DELETE_FILE%">>"%DELETE_FILE%"

if not "%CD%"=="%SAVE_DIR%" (%WINDIR%\explorer.exe /select,"%DELETE_FILE%")
