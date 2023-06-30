@echo off
:start
@ECHO OFF
title Unnecessary files remover by steever38
reg query HKU\S-1-5-19 1>nul 2>nul || (goto :Admin)
goto :start2

:Admin
echo Please run this script as administrator for it to work properly.
pause
exit

:start2

color B
echo                                     #----------UNNECESSARY FILES REMOVER----------#
set /p discord=Join the discord? (Y/N) : 
if %discord%==y start https://discord.gg/yCggt695tT & echo Thanks!
if %discord%==Y start https://discord.gg/yCggt695tT & echo Thanks!
if %discord%==n goto :cleanmgr
if %discord%==N goto :cleanmgr else goto :erreur

:cleanmgr
set /p cleanmgr=Open cleanmgr? (Y/N) : 
cls
if %cleanmgr%==y goto :yes
if %cleanmgr%==Y goto :yes
if %cleanmgr%==n goto :no
if %cleanmgr%==N goto :no else goto :erreur

:erreur
color c
echo Error: please enter y/n
pause
cls
goto :start

:no
color B
cls
set /p open_files=open all folders where files will be deleted? (Y/N) : 
if %open_files%==y explorer %userprofile%\Recent & explorer C:\Windows\Prefetch & explorer C:\Windows\Temp & explorer %userprofile%\appdata\local\temp & goto :open_n
if %open_files%==Y explorer %userprofile%\Recent & explorer C:\Windows\Prefetch & explorer C:\Windows\Temp & explorer %userprofile%\appdata\local\temp & goto :open_n
if %open_files%==n goto :open_n
if %open_files%==N goto :open_n else goto :erreur1
:erreur1
color c
echo Error: please enter y/n
pause
cls
goto :no

:open_n
cls
color 1
echo The deletion of temporary files will start soon...
pause
color a
del /s /f /q %userprofile%\Recent\*.*
del /s /f /q C:\Windows\Prefetch\*.*
del /s /f /q C:\Windows\Temp\*.*
del /s /f /q %USERPROFILE%\appdata\local\temp\*.*
echo done!
pause
cls

:bin
color B
set /p Recyclebin=Del Recycle bin ? (Y/N) : 
if %Recyclebin%==y del /s /f /q %systemdrive%\$Recycle.bin&echo done!&goto :fin
if %Recyclebin%==Y del /s /f /q %systemdrive%\$Recycle.bin&echo done!&goto :fin
if %Recyclebin%==n goto :fin
if %Recyclebin%==N goto :fin else goto :erreur2

:erreur2
color c
echo Error: please enter y/n
cls
pause
goto :bin

:fin
cls
color B
echo Thanks for using this script!
echo Dicord : discord.gg/yCggt695tT
echo Github : github.com/steever38
pause
goto :fin
exit

:yes
start C:\WINDOWS\system32\cleanmgr.exe
goto :no
pause
