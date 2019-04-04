echo "######################################"
echo "###########Easy payload###############"
echo "###########by Srikanth################"
echo "######################################"
echo "Enter 1 to generate payload"
echo "Enter 2 to Exploit(Msfconsole)"
echo "Enter 3 to exit"
echo "Enter option:"
read op1
		
case $op1 in
      #payload folder	
	1) cd payloads 
	cc payload.c
	./a.out;;
     #exploit folder
	2) cd exploit
	cc exploit.c
	./a.out;;
	3)^C;;
     #for worng input
	*) echo "INVALID NUMBER!" ;;
esac
