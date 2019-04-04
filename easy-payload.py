

while True:
	print('┌───┐░░░░░░░░░░┌───┐░░░░░░┌┐░░░░░░░░┌┐\n
	│┌──┘░░░░░░░░░░│┌─┐│░░░░░░││░░░░░░░░││\n
	│└──┬──┬──┬┐░┌┐│└─┘├──┬┐░┌┤│┌──┬──┬─┘│\n
	│┌──┤┌┐│──┤│░│││┌──┤┌┐││░││││┌┐│┌┐│┌┐│\n
	│└──┤┌┐├──│└─┘│││░░│┌┐│└─┘│└┤└┘│┌┐│└┘│\n
	└───┴┘└┴──┴─┐┌┘└┘░░└┘└┴─┐┌┴─┴──┴┘└┴──┘\n
	░░░░░░░░░░┌─┘│░░░░░░░░┌─┘│░░░░░░░░░░░░\n
	░░░░░░░░░░└──┘░░░░░░░░└──┘░░░░░░░░░░░░')
	print('o--------------------------------o')
	print('[+] Enter 1 to generate payload\nEnter 2 to start listner\nEnter 3 to cleanup backup folder')

	option = input('[option]:')
	if option == '1':
		generate()
	elif option == '2':
		listner()
	elif option == 3':
		os.system('rm output/*')
	else:
		print('Wrong option')
