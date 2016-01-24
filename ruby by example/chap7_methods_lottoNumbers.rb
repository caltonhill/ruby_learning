#Need 6 random numbers between 1 and 49
#No duplicates


@lotto_numbers = []

def get_lotto_numbers()
	number = rand(49)
	unless @lotto_numbers.include?(number)
		@lotto_numbers << number
	end
end

count = 0
while count < 7 do 
	get_lotto_numbers
	count += 1
	end

puts "Your lotto numbers are: #{@lotto_numbers.sort.join(' , ')}"
