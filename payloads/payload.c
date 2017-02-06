#include <stdio.h>
#include <string.h>

void main ()
{
	char command[50];
	int op1;
{
//edit here for PAYLOADS************
printf("Enter 1 to generate windows payload\nEnter 2 to generate android payload");
printf("\nEnter Option:");

scanf("%d",&op1);

switch ( op1 ) {
case 1: //Windows payload***********
	strcpy(command, "bash windows_reverse_tcp.sh");
	system(command);
	break;
case 2: //Android payload***********
	strcpy(command, "bash android_reverse_tcp.sh");
	system(command);
	break;

default:
	printf("enter 1 - 2 only");
  	break;
}
	
}

} 
