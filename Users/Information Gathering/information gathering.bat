@echo off
cd /D [DRIVE_LETTER]:\output
	systeminfo 1>&2> .\sysinfo.txt
	ipconfig /all 1>&2> .\ipconfig.txt
	netstat -nao 1>&2> .\hostports.txt;
	netsh wlan show all 1>&2> .\wlanstat.txt;
	certutil -store -user -silent my 1>&2> .\certificates.txt;
	certutil -store -silent my 1>>&2>> .\certificates.txt
exit