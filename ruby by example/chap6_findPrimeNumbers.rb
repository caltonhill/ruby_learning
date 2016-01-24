
prime_numbers = []

(2..20).each do |int| 
	is_prime = true
	  (2..int-1).each do |divisor|
		   if int % divisor == 0
			 is_prime = false
			 break
		   end 
	 end
	 
	 if is_prime == true
		 prime_numbers << int
	end
end

puts prime_numbers.join(", ")


# Example
array = []
(2..20).each do |num|
	flag = true
	(2..num-1).each do |x|
		if num % x == 0
			flag = false
			break
		end
	end
	
	if flag == true
		array << num
	end
end
puts "Prime numbers (up to 20) are: #{array.join(', ')}"
			