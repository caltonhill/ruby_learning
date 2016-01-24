array = []
count = 0
puts "Enter scores: "
while true
	input = gets.chomp.to_i
	if input == -1
		break
	else
	  	array << input
		count += 1
	end
end
sum = 0
array.each do |number|
	sum += number
end
average = sum / count

puts "Average score: #{average}"