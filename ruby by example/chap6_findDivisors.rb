puts "Enter a number: "
input = gets.chomp.to_i

divisors = []

#try dividing input by every number between 1 and input
# where there's no remainder add to an array

for i in (1..input).each do
	if input % i == 0
	   divisors << i
	end
end
puts "The divisors of #{input} are:"
puts divisors.join(", ")