#Need 6 random numbers between 1 and 49
#No duplicates
#So separate pots. Each number drawn must be checked against previous

count = 0
lotto_numbers = []

until count == 6
	number = rand(49)
	if lotto_numbers.include?(number)
		next
	else
		lotto_numbers << number
		count += 1
	end
end
puts "Your lotto numbers are #{lotto_numbers}"