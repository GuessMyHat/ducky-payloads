@echo off
cd /D [DRIVE_LETTER]:\output
	systeminfo 1>&2> .\sysinfo.txt
	ipconfig /all 1>&2> .\ipconfig.txt
	curl ifconfig.me/all > .\public_ip.txt
	echo: >> .\public_ip.txt
	echo: >> .\public_ip.txt
	curl ipinfo.io/json >> .\public_ip.txt
	echo: >> .\public_ip.txt
	echo: >> .\public_ip.txt
	curl ifconfig.co/json >> .\public_ip.txt
	netstat -nao 1>&2> .\host_ports.txt;
	netsh wlan show all 1>&2> .\wlan_stats.txt;
	certutil -store -user -silent my 1>&2> .\certificates.txt;
	certutil -store -silent my 1>>&2>> .\certificates.txt
exit