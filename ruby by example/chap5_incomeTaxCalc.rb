# let user input income
# work out which band that falls into
# calculate the tax due for the entered amount and display it
puts "Enter your annual income: "
income = gets.chomp.to_i

if income <= 18200
	  tax = 0
  elsif income > 18200 &&  income <= 37000
	  tax = (income - 18200) * 0.19
  elsif income >= 37001 &&  income <= 80000
	  tax = ((income - 37000) * 0.325) + 3572
  elsif income >= 80001 && income <= 180000
      tax = ((income - 80000) * 0.37) + 17547
  elsif income >= 180001
      tax = ((income - 180000) * 0.45) + 54547
  else
	  puts "Not a valid amount."
end
puts "Tax due is: #{tax}"