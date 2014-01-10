print "Enter first number: "
first_number = Float(gets)
print "Enter second number: "
second_number = Float(gets)
print "Now enter an operation: (+,-,*,/): "
op = gets.chomp
case op
	when "+"
		puts(first_number + second_number)
	when "-"
		puts(first_number - second_number)
	when "*"
		puts(first_number * second_number)
	when "/"
		puts(first_number / second_number)
end


		