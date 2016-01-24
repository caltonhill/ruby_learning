#Need 6 random numbers between 1 and 49
#No duplicates

def get_next_valid_lotto_number(existing_lotto_numbers)
	new_lotto_number = rand(49)
	while existing_lotto_numbers.include?(new_lotto_number)
		new_lotto_number = rand(49)
	end
	return new_lotto_number
end

lotto_numbers = []
6.times do 
	new_valid_number = get_next_valid_lotto_number(lotto_numbers)
	lotto_numbers << new_valid_number
	end
	

puts "Your lotto numbers are: #{lotto_numbers.inspect}"
