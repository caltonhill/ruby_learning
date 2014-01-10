def sum(*args)
	total = 0
	for i in args
		total += i
	end
	return total
end

def growth(principal, years, rate=1.01) #here we set a default rate
	while years >0
		principal *= rate
		years -= 1
	end
	return principal
end

#print sum(5,10)
#print ("\n")
#print sum(10,10,40,33)

print growth(1000, 10, 1.5)
print "\n"
print growth(5000,2)