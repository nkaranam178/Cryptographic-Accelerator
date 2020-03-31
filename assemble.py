import os
import sys
'''
  TODO: negative immediates
'''
def encodeString(string):
	result = ""
	for char in string:
		result = result + "{0:b}".format( ord(char) ).zfill(16)
	return result


def immToBin(imm, format):
	if(imm[0] != "#"):
		raise Exception("invalid immediate argument")
		return ""
	elif(imm[1:].isdigit()):
		if (format == "I" and int(imm[1:]) < 32):
              		return "{0:b}".format(int(imm[1:])).zfill(5)
                elif (format == "J" and int(imm[1:]) < 1024):
              		return "{0:b}".format(int(imm[1:])).zfill(11)
		else:
			raise Exception("invalid immediate argument")
			return ""
def getRegNum(reg):
	if(reg.lower() == "r0"): return "000"
	elif(reg.lower() == "r1"): return "001"
	elif(reg.lower() == "r2"): return "010"
	elif(reg.lower() == "r3"): return "011"
	elif(reg.lower() == "r4"): return "100"
	elif(reg.lower() == "r5"): return "101"
	elif(reg.lower() == "r6"): return "110"
	elif(reg.lower() == "r7"): return "111"
	else: 
		raise Exception("Invalid register argument")
		return ""


instruction = {
	"HALT": 
	{
		"opcode":"11111",
		"format":"J"
	},
	"NOP":
	{
		"opcode":"00000",
		"format":"J"
	},
	"ADD":
	{
		"opcode":"00110",
		"function":"00",
		"format":"R"
	},
	"SUB": 
	{
		"opcode":"00110",
		"function":"01",
		"format":"R"
	},
	"ADDI":
	{
		"opcode":"00100",
		"format":"I"
	},
	"SUBI":
	{
		"opcode":"00101",
		"format":"I"
	},
	"AND":
	{
		"opcode":"00111",
		"function":"00",
		"format":"R"
	},
	"OR":
	{
		"opcode":"00111",
		"function":"01",
		"format":"R"
	},
	"XOR":
	{
		"opcode":"00111",
		"function":"10",
		"format":"R"
	},
	"NOT":
	{
		"opcode":"00111",
		"function":"11",
		"format":"R"
	},
	"SLL":
	{
		"opcode":"01000",
		"format":"I"
	},
	"SRL":
	{
		"opcode":"01001",
		"format":"I"
	},
	"SRA":
	{
		"opcode":"01010",
		"format":"I"
	},
	"MOV":
	{
		"opcode":"01011",
		"format":"I"
	},
	"BNE":
	{
		"opcode":"10000",
		"format":"J"
	},
	"BEQ":
	{
		"opcode":"10001",
		"format":"J"
	},
	"BOV":
	{
		"opcode":"10010",
		"format":"J"
	},
	"BVAL": 
	{
		"opcode":"10011",
		"format":"J"
	},
	"BNEG":
	{
		"opcode":"10100",
		"format":"J"
	},
	"BPOS":
	{
		"opcode":"10101",
		"format":"J"
	},
	"BUNU":
	{
		"opcode":"10110",
		"format":"J"
	},
	"BUNC":
	{
		"opcode":"10111",
		"format":"J",
	},
	"ST":
	{
		"opcode":"01100",
		"format":"I"
	},
	"LD":
	{
		"opcode":"01101",
		"format":"I"
	},
	"HASH": 
	{
		"opcode":"11100",
		"format":"S"
	},
	"ENC":
	{
		"opcode":"11101",
		"format":"S"
	},
	"DEC":
	{
		"opcode":"11110",
		"format":"S"
	}
}

if (len(sys.argv) <= 1):
	raise Exception("No input file given")

file_name = sys.argv[1]
fp = open(file_name)
contents = fp.read()
fp.close()

contents = contents.split("\n")
line_num = 0
hash_index = 0
enc_index = 0
dec_index = 0

file_out = os.path.split(file_name)[1]
file_out = file_out.split(".")[0] + ".out"
f = open(file_out, "w") 

for line in contents:
        line_output = ""
        line_num = line_num + 1
	line = line.split()
	try:
		if (len(line) > 0):
     			line_output = line_output + instruction[line[0].upper()]["opcode"]
			if (instruction[line[0].upper()]["format"] == "R"):  #Parse R format
				line_output = line_output + getRegNum(line[1].split(",")[0]) + getRegNum(line[2].split(",")[0]) + getRegNum(line[3].split(",")[0])
				line_output = line_output + instruction[line[0].upper()]["function"] # Append function bits

			if (instruction[line[0].upper()]["format"] == "I"):  #Parse I format
			        if (line[0].upper() == "MOV"):
					line_output = line_output + getRegNum(line[1].split(",")[0]) + getRegNum(line[2].split(",")[0]) + "00000"	
				else:
					line_output = line_output + getRegNum(line[1].split(",")[0]) + getRegNum(line[2].split(",")[0]) + immToBin(line[3],"I")
	
			if (instruction[line[0].upper()]["format"] == "J"):  #Parse J format
				if (line[0].upper() == "HALT" or line[0].upper() == "NOP"):
					line_output = line_output + "00000000000"
				else:
					line_output = line_output + immToBin(line[1], "J")	
		
			if (instruction[line[0].upper()]["format"] == "S"):  #Parse S format
				if (line[0].upper() == "HASH"):
					line_output = line_output + "{0:b}".format(int(hash_index)).zfill(11)
					hash_index = hash_index + 1
				if (line[0].upper() == "ENC"):
					line_output = line_output + "{0:b}".format(int(enc_index)).zfill(11)
					hash_index = enc_index + 1
				if (line[0].upper() == "DEC"):
					line_output = line_output + "{0:b}".format(int(dec_index)).zfill(11)
					hash_index = dec_index + 1
				line_output = line_output + " " + encodeString(" ".join(line[1:]))
			f.write(line_output + "\n")
	except:
		print("error on line " + str(line_num))
		print(" ".join(line))
		break
f.close()
