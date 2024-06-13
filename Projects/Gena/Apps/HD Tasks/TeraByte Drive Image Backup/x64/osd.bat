PUSHD %~dp0
reg add "HKCR\.tbs" /f /ve /t REG_SZ /d "Terabyte"
reg add "HKCR\Terabyte" /f /ve /t REG_SZ /d "Terabyte"
reg add "HKCR\Terabyte\shell\open\command" /f /ve /t REG_SZ /d "%CD%\tbosdtw64.exe \"%%1\""
