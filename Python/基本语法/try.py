错误处理try

try:
	file = open('e','r+')
except Exceprion as e:
	print('there is nor file named as e')
	response = input('do you want to create a new file')
	if response == 'y':
		file = open('e','w')
	else:
		pass
else:
	file.write('sss')
file.close()

