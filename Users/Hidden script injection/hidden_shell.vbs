Set WshShell = CreateObject("WScript.Shell")
WshShell.run chr(34) & "[DRIVE_LETTER]:\b.bat" & Chr(34), 0
Set WshShell = Nothing
