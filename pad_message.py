import sys

def pad_msg(msg,length):
	res = msg
	while(len(res) < int(length) ):
		res = "0" + res
	return res

if(len(sys.argv) < 3):
	msg_length = 512
else:
	msg_length = sys.argv[2]

