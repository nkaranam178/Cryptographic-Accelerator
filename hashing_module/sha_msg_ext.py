import array

w = array.array('l', [0,1,2,3,4,5,6,7,8,9,20,11,12,13,14,15])

print(w)

for i in range(16,80):
	w.append((w[i-3] ^ w[i-8] ^ w[i-14] ^ w[i-16])<<1)

print(w)