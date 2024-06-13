@SetLocal EnableExtensions
@Echo Off
call :IsAdmin
Pushd "%~dp0"

If Exist "%cd%\abc\" Goto abc

:abc
Echo Install ABC Font
Reg Add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v "VK Sans Serif 8,10,12,14,18,24 (VGA res)" /t REG_SZ /d "%cd%\abc\vknt.fon" /f
Reg Add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v ".VnTime (TrueType)" /t REG_SZ /d "%cd%\abc\VNTIME.TTF" /f
Reg Add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v ".VnTime Bold (TrueType)" /t REG_SZ /d "%cd%\abc\VNTIMEB.TTF" /f
Reg Add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v ".VnTime Bold Italic (TrueType)" /t REG_SZ /d "%cd%\abc\VNTIMEBI.TTF" /f
Reg Add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v ".VnTime Italic (TrueType)" /t REG_SZ /d "%cd%\abc\VNTIMEI.TTF" /f
Reg Add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v ".VnArial (TrueType)" /t REG_SZ /d "%cd%\abc\VNARIAL.TTF" /f
Reg Add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v ".VnArial Bold (TrueType)" /t REG_SZ /d "%cd%\abc\VNARIALB.TTF" /f
Reg Add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v ".VnArial Italic (TrueType)" /t REG_SZ /d "%cd%\abc\VNARIALI.TTF" /f
Reg Add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v ".VnArial Narrow (TrueType)" /t REG_SZ /d "%cd%\abc\VNARIALN.TTF" /f
Reg Add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v ".VnArial Narrow Bold (TrueType)" /t REG_SZ /d "%cd%\abc\VNARIANB.TTF" /f
Reg Add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v ".VnArial Narrow Italic (TrueType)" /t REG_SZ /d "%cd%\abc\VNARIANI.TTF" /f
Reg Add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v ".VnArial NarrowH (TrueType)" /t REG_SZ /d "%cd%\abc\VHARIALN.TTF" /f
Reg Add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v ".VnArialH (TrueType)" /t REG_SZ /d "%cd%\abc\VHARIAL.TTF" /f
Reg Add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v ".VnArialH Bold (TrueType)" /t REG_SZ /d "%cd%\abc\VHARIALB.TTF" /f
Reg Add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v ".VnArialH Italic (TrueType)" /t REG_SZ /d "%cd%\abc\VHARIALI.TTF" /f
If Exist "%cd%\vni\" Goto vni

:vni
Echo Install VNI Font
Reg Add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v "VNI-Times (TrueType)" /t REG_SZ /d "%cd%\vni\VTIMESN.TTF" /f
Reg Add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v "VNI-Times-Italic (TrueType)" /t REG_SZ /d "%cd%\vni\VTIMESI.TTF" /f
Reg Add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v "VNI-Times-Bold-Italic (TrueType)" /t REG_SZ /d "%cd%\vni\VTIMESBI.TTF" /f
Reg Add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v "VNI-Times-Bold (TrueType)" /t REG_SZ /d "%cd%\vni\VTIMESB.TTF" /f
Reg Add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v "VNI-Tubes (TrueType)" /t REG_SZ /d "%cd%\vni\VTUBE.TTF" /f
Reg Add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v "VNI-Truck (TrueType)" /t REG_SZ /d "%cd%\vni\Vtruck.TTF" /f
Reg Add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v "VNI-Univer (TrueType)" /t REG_SZ /d "%cd%\vni\VUNIVER.TTF" /f
If Exist "%cd%\art\" Goto art

:art
Echo Install ART Font
Reg Add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v "Rothenburg Decorative Normal (TrueType)" /t REG_SZ /d "%cd%\art\rothenbg.ttf" /f
Reg Add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v "Loki Cola (TrueType)" /t REG_SZ /d "%cd%\art\lokicola.ttf" /f
Reg Add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v "2Dumb (TrueType)" /t REG_SZ /d "%cd%\art\2Dumb.ttf" /f
Reg Add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v "3dumb (TrueType)" /t REG_SZ /d "%cd%\art\3Dumb.ttf" /f
Reg Add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v "Get the Message (TrueType)" /t REG_SZ /d "%cd%\art\gettheme.ttf" /f
Reg Add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v "KellyAnnGothic Regular (TrueType)" /t REG_SZ /d "%cd%\art\kellyag_.ttf" /f
If Exist "%cd%\art\" Goto utm

:utm
Echo Install UTM Font
Reg Add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v "UTM Facebook (TrueType)" /t REG_SZ /d "%cd%\utm\UTM Facebook.ttf" /f
Reg Add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v "UTM Fleur (TrueType)" /t REG_SZ /d "%cd%\utm\UTM Fleur.ttf" /f
Reg Add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v "UTM Camellia F (TrueType)" /t REG_SZ /d "%cd%\utm\UTM Camellia F.ttf" /f

:IsAdmin
Reg.exe query "HKU\S-1-5-19\Environment"
If Not %ERRORLEVEL% EQU 0 (
 Cls & Echo You must have administrator rights to continue ... 
 Pause & Exit
)
Cls
goto:eof

