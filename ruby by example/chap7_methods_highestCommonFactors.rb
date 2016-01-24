def get_divisors(num)
	divisors = []
	(1..num).each do |i|
		if num % i == 0
		divisors << i
		end
	end
	return divisors
end

puts "Enter a first number: "
num1 = gets.chomp.to_i
divisors_num1 = get_divisors(num1)
puts "Thanks. Now enter another number: "
num2 = gets.chomp.to_i
divisors_num2 = get_divisors(num2)

common_factors = []
divisors_num1.each do |div|
	if divisors_num2.include?(div)
		common_factors << div
	end		
end

puts "The Highest Common Factor of #{num1} and #{num2} is #{common_factors.max}."