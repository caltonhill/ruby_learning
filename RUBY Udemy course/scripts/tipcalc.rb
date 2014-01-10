def tipCalc(bill)
	return bill * 0.15  #not necessary to speficy the return - it will use last thing. But more precise #to specify the return since there could be more than one element in the method. 
end
print "Enter the amount of the bill: "
bill = Float(gets.chomp)
tip = tipCalc(bill)
total = bill + tip
puts "Total including tip should be: " + total.to_s