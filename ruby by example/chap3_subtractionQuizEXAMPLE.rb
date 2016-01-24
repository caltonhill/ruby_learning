count = 0

10.times do
	num1 = rand(10)
	num2 = rand(10)
	if num1 > num2
		print "#{num1} - #{num2} = "
		answer = num1 - num2
	else
		print "#{num2} - #{num1} = "
		answer = num2 - num1
	end
	input = gets.chomp.to_i
	if answer == input
		puts "Correct!"
		count += num1
	else
		puts "Wrong!"
	end
end
puts "Your score is #{count}/10"