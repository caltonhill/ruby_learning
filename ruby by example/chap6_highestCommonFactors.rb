# get a number and store all divisors in an array
# get another number and store all divisors in another array
# from one array check from large to small whether the divisor is also in the other array

divisors_num1 = []
divisors_num2 = []

puts "Enter a number: "
num1 = gets.chomp.to_i
for i in (1..num1).each do
	if num1 % i == 0
	   divisors_num1 << i
	end
end
puts "The divisors of #{num1} are:"
puts divisors_num1.join(", ")

puts "Enter a second number: "
num2 = gets.chomp.to_i
for i in (1..num2).each do
	if num2 % i == 0
	   divisors_num2 << i
	end
end
puts "The divisors of #{num2} are:"
puts divisors_num2.join(", ")

#sort an array from large to small
divisors_num1.sort.reverse

common_factors = []
divisors_num1.each do |div|
	if divisors_num2.include?(div)
		common_factors << div
	end		
end

puts "The Highest Common Factor of #{num1} and #{num2} is #{common_factors.max}."