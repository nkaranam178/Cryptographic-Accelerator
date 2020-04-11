import os
import sys

def twosComp(str):
   n = len(str)
   i = n-1
   while(i >= 0):
      if(str[i] == '1'):
         break
      i = i - 1
   if(i == -1):
      return '1' + str
   k = i -1
   while(k >= 0):
      if(str[k] == '1'):
         str = list(str)
         str[k] = '0'
         str = ''.join(str)
      else:
         str = list(str)
         str[k] = '1'
         str = ''.join(str)
      k = k-1
   return str


def asciiToBin(string):
   result = ""
   for char in string:
      result = result + "{0:b}".format( ord(char) ).zfill(8)
   return pad_msg(result)


def decimalToBin(num, num_bits):
   return "{0:b}".format(num).zfill(num_bits)

def immToBin(imm, format):
   if(imm[0] != "#"):
      raise Exception("invalid immediate argument")
      return ""
   if (format == "I"):
      if(imm[1:].isdigit() and int(imm[1:]) < 32):
         return decimalToBin(int(imm[1:]),5)
   elif (format == "J"):
      if(imm[1:].isdigit() and int(imm[1:]) < 511):
         return decimalToBin(int(imm[1:]),11)
      if(imm[1] == "-" and int(imm[2:]) < 511):
         return twosComp(decimalToBin(int(imm[2:]),11))

def pad_msg(msg):
   if(line[0].upper() == "HASH"):
      result =  msg + "1"
      msg_length = len(msg)
      msg_length = decimalToBin(msg_length,64)
      while(len(result) < 448):
         result = result + "0"
      result = result + msg_length
   else:
      result = msg
      while(len(result) < 128):
         result = "0" + result
   return result

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

#file_out = os.path.split(file_name)[1]
#file_out = file_out.split(".")[0] + ".out"
file_out = "output"
f = open(file_out, "w") 

for line in contents:
   line_output = ""
   line_num = line_num + 1
   line = line.split()
 #  try:
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
            line_output = line_output + decimalToBin(int(hash_index),11)
            hash_index = hash_index + 1
         if (line[0].upper() == "ENC"):
            line_output = line_output + decimalToBin(int(enc_index),11)
            enc_index = enc_index + 1
         if (line[0].upper() == "DEC"):
            line_output = line_output + decimalToBin(int(dec_index),11)
            dec_index = dec_index + 1
         line_output = line_output + " " + asciiToBin(" ".join(line[1:]))
   if(line_output != ""):
      print(line_output)
    # f.write(line_output + "\n")
#   except:
#      print("error on line " + str(line_num))
#      print(" ".join(line))
#      break
f.close()
