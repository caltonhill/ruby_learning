#create a method to find lowest common multiple
def lcm (num1,num2)
	@common_multiples = []
	  for i in (num2..num2*num1).step(num2) do
			if (i % num2 == 0) && (i % num1 == 0)
			  @common_multiples << i
			end
		end
	return @common_multiples.min

end

puts "Trying to find lowest number divisible by 1-15"

# with a method for finding lcm. Need to do it for 1,2 then result,3 
# then result, 4 etc

# below gets there (but maybe false positive?)
# anyway - it's dreadful

lowest_common_multiples = []
cm = lcm(1,2)
(3..15).each do |i|
	num1 = cm
	num2 = i
	cm = lcm(num1,num2)
	lowest_common_multiples << cm
end

puts "It seems to be #{lowest_common_multiples.last}"
