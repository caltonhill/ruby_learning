class Calculator
	
	def add(numA, numB)
		numA + numB
	end
	
	def subtract(numA, numB)
		numA - numB
	end
	
end

my_calc = Calculator.new

total1 = my_calc.add(8,4)
total2 = my_calc.subtract(8,4)

puts total1
puts total2