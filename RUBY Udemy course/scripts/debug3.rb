t1 = 0
t2 = 1
n = 10
print(0, " ", 1, " ")
while n > 0
	t = t1 + t2
	print(t, " ")
	temp = t2
	t2 = t
	t1 = temp
	n -= 1
end