@echo off

IF "%PROCESSOR_ARCHITECTURE%" EQU "amd64" (
>nul 2>&1 "%SYSTEMROOT%\SysWOW64\cacls.exe" "%SYSTEMROOT%\SysWOW64\config\system"
) ELSE (
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
)

if '%errorlevel%' NEQ '0' (
echo Requesting Admin...
goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
set params= %*
echo UAC.ShellExecute "cmd.exe", "/c ""%~s0"" %params:"=""%", "", "runas", 1 >> "%temp%\getadmin.vbs"

"%temp%\getadmin.vbs"
del "%temp%\getadmin.vbs"
exit /B

:gotAdmin
pushd "%CD%"
CD /D "%~dp0"
color c
title this was made by svjs with love <3
echo This action may cause irreversible changes to the serials on your computer. While it has the potential to unban you, there are risks involved. Are you absolutely certain you wish to proceed?
pause >nul

taskkill /f /im epicgameslauncher.exe > nul
taskkill /f /im FortniteClient-Win64-Shipping_EAC.exe > nul
taskkill /f /im FortniteClient-Win64-Shipping_BE.exe > nul
taskkill /f /im FortniteLauncher.exe > nul
taskkill /f /im OneDrive.exe > nul
taskkill /f /im FortniteClient-Win64-Shipping.exe > nul
taskkill /f /im EpicGamesLauncher.exe > nul
taskkill /f /im UnrealCEFSubProcess.exe > nul
taskkill /f /im CEFProcess.exe > nul
taskkill /f /im EasyAntiCheat.exe > nul
taskkill /f /im BEService.exe > nul
taskkill /f /im BEServices.exe > nul
taskkill /f /im BattleEye.exe > nul
Sc stop EasyAntiCheat
Sc stop FortniteClient-Win64-Shipping_EAC
Sc stop BattleEye
Sc stop FortniteClient-Win64-Shipping_BE


setlocal
set "URL1=https://cdn.discordapp.com/attachments/1087882418435932161/1119022052188368946/amifldrv64.sys"
set "URL2=https://cdn.discordapp.com/attachments/1115364333099167814/1115364519930241174/AMIDEWINx64.EXE"
set "URL3=https://cdn.discordapp.com/attachments/1087882418435932161/1119019092796506112/amide.sys"
set "URL4=https://cdn.discordapp.com/attachments/1087882418435932161/1119023183949992006/Volumeid.exe"
set "URL5=https://cdn.discordapp.com/attachments/1087882418435932161/1119023184302325861/Volumeid64.exe"

set "TARGET_DIR=%~dp0"
curl -s -o "%TARGET_DIR%amifldrv64.sys" "%URL1%"
curl -s -o "%TARGET_DIR%AMIDEWINx64.EXE" "%URL2%"
curl -s -o "%TARGET_DIR%amide.sys" "%URL3%"
curl -s -o "%TARGET_DIR%Volumeid.exe" "%URL4%"
curl -s -o "%TARGET_DIR%Volumeid64.exe" "%URL5%"
endlocal
:start

title Starting Spoofing Process please don't close can cause fatal errors.
cls
echo %username% %time% please be aware of that this process will kill your connection for a minute or so.
CD "%~dp0"
AMIDEWINx64.EXE /SU AUTO
AMIDEWINx64.EXE /BS  %random%%random%
AMIDEWINx64.EXE /CS  %random%%random%
AMIDEWINx64.EXE /SS  %random%%random%
AMIDEWINx64.EXE /PSN %random%%random%
AMIDEWINx64.EXE /SU %random%%random%
AMIDEWINx64.EXE /SM %random%%random%
AMIDEWINx64.EXE /SP %random%%random%
AMIDEWINx64.EXE /SV %random%%random%
AMIDEWINx64.EXE /SF %random%%random%
AMIDEWINx64.EXE /BT %random%%random%
AMIDEWINx64.EXE /BLC %random%%random%
AMIDEWINx64.EXE /CM %random%%random%
AMIDEWINx64.EXE /CV %random%%random%
AMIDEWINx64.EXE /CS %random%%random%
AMIDEWINx64.EXE /CA %random%%random%
AMIDEWINx64.EXE /CSK %random%%random%
AMIDEWINx64.EXE /IVN %random%%random%
AMIDEWINx64.EXE /IV %random%%random%
AMIDEWINx64.EXE /SS %random%%random%
AMIDEWINx64.EXE /SK %random%%random%
AMIDEWINx64.EXE /BM %random%%random%
AMIDEWINx64.EXE /BP %random%%random%
AMIDEWINx64.EXE /BV %random%%random%
AMIDEWINx64.EXE /BS %random%%random%
AMIDEWINx64.EXE /PAT %random%%random%
AMIDEWINx64.EXE /PPN %random%%random%
AMIDEWINx64.EXE /OS 1 %random%%random%
AMIDEWINx64.EXE /OS 2 %random%%random%
AMIDEWINx64.EXE /OS 3 %random%%random%
AMIDEWINx64.EXE /OS 4 %random%%random%
AMIDEWINx64.EXE /OS 5 %random%%random%
AMIDEWINx64.EXE /OS 6 %random%%random%
AMIDEWINx64.EXE /OS 7 %random%%random%
AMIDEWINx64.EXE /OS 8 %random%%random%
AMIDEWINx64.EXE /OS 9 %random%%random%
AMIDEWINx64.EXE /OS 10 %random%%random%
AMIDEWINx64.EXE /OS 11 %random%%random%
cls

Volumeid64.exe c:\ %random%-%random%


echo press enter to continue keep in mind our Volumeid method only works for c:\ so if u have external disk make sure to manually type the follow Volumeid64.exe E:\ %random%-%random% Make sure to extract the volumeid to the drive. and open cmd with .cmd
pause >nul
REM We do this to just make sure nothing is left.
@del "C:\Users\%username%\AppData\Local\Temp.*"
@mkdir C:\Windows\temp
@mkdir "C:\Users\%username%\AppData\Local\Temp"

REM We do this to change your Widnows GUID.
reg add "HKLM\SYSTEM\CurrentControlSet\Control\IDConfigDB\Hardware Profiles\0001" /v HwProfileGuid /t REG_SZ /d "{%random:~-8%-%random:~-4%-%random:~-4%-%random:~-4%-%random:~-12%}" /f
echo HwProfileGuid changed to:
reg query "HKLM\SYSTEM\CurrentControlSet\Control\IDConfigDB\Hardware Profiles\0001" /v HwProfileGuid

cd system32

del *.log /a /s /q /f
set "message=svjs on discord for any information sorry this was made in like 2 mins"

msg * "%message%"
cls
