def add(n1, n2)
	return n1 + n2
end
def subtract(n1, n2)
	return n1 - n2
end
def multiply(n1, n2)
	return n1 * n2
end
def divide(n1, n2)
	return n1 / n2
end
print "Enter first number: "
num1 = Float(gets.chomp)
print "Enter second number: "
num2 = Float(gets.chomp)
print "Enter operation (+,-,*,/): "
operation = gets.chomp
if operation == "+"
	puts(add(num1,num2))
elsif operation == "-"
	puts(subtract(num1,num2))
elsif operation == "*"
	puts(multiply(num1,num2))
elsif operation == "/"
	puts(divide(num1,num2))	
else 
	puts "Bad Operator!!"
end