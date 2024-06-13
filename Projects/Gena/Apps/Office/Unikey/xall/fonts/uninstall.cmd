@SetLocal EnableExtensions
@Echo Off
call :IsAdmin
Pushd "%~dp0"

If Exist "%cd%\abc\" Goto abc

:abc
Echo Uninstall ABC Font
Echo Y| Echo Y| Reg Delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v "VK Sans Serif 8,10,12,14,18,24 (VGA res)"
Echo Y| Echo Y| Reg Delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v ".VnTime (TrueType)"
Echo Y| Reg Delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v ".VnTime Bold (TrueType)" 
Echo Y| Reg Delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v ".VnTime Bold Italic (TrueType)"
Echo Y| Reg Delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v ".VnTime Italic (TrueType)"
Echo Y| Reg Delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v ".VnArial (TrueType)"
Echo Y| Reg Delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v ".VnArial Bold (TrueType)"
Echo Y| Reg Delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v ".VnArial Italic (TrueType)"
Echo Y| Reg Delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v ".VnArial Narrow (TrueType)"
Echo Y| Reg Delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v ".VnArial Narrow Bold (TrueType)"
Echo Y| Reg Delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v ".VnArial Narrow Italic (TrueType)"
Echo Y| Reg Delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v ".VnArial NarrowH (TrueType)"
Echo Y| Reg Delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v ".VnArialH (TrueType)"
Echo Y| Reg Delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v ".VnArialH Bold (TrueType)"
Echo Y| Reg Delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v ".VnArialH Italic (TrueType)"
If Exist "%cd%\vni\" Goto vni

:vni
Echo Uninstall VNI Font
Echo Y| Reg Delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v "VNI-Times (TrueType)"
Echo Y| Reg Delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v "VNI-Times-Italic (TrueType)"
Echo Y| Reg Delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v "VNI-Times-Bold-Italic (TrueType)"
Echo Y| Reg Delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v "VNI-Times-Bold (TrueType)"
Echo Y| Reg Delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v "VNI-Tubes (TrueType)"
Echo Y| Reg Delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v "VNI-Truck (TrueType)"
Echo Y| Reg Delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v "VNI-Univer (TrueType)"
If Exist "%cd%\art\" Goto art

:art
Echo Uninstall ART Font
Echo Y| Reg Delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v "Rothenburg Decorative Normal (TrueType)"
Echo Y| Reg Delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v "Loki Cola (TrueType)"
Echo Y| Reg Delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v "2Dumb (TrueType)"
Echo Y| Reg Delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v "3dumb (TrueType)"
Echo Y| Reg Delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v "Get the Message (TrueType)"
Echo Y| Reg Delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v "KellyAnnGothic Regular (TrueType)"
If Exist "%cd%\art\" Goto utm

:utm
Echo Uninstall UTM Font
Echo Y| Reg Delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v "UTM Facebook (TrueType)"
Echo Y| Reg Delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v "UTM Fleur (TrueType)"
Echo Y| Reg Delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v "UTM Camellia F (TrueType)"

:IsAdmin
Reg.exe query "HKU\S-1-5-19\Environment"
If Not %ERRORLEVEL% EQU 0 (
 Cls & Echo You must have administrator rights to continue ... 
 Pause & Exit
)
Cls
goto:eof

