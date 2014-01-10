answer = "Hal 9000"
puts "Let's play a guessing game. You get three guesses."
puts "What was the name of the ship computer in '2001: A Space Odyssey'?"
guess = gets.chomp
if guess == answer
	puts "Well done, smartarse."
else
	puts "Nope. Guess again: "
	guess = gets.chomp
	if guess == answer
		puts "Well done, smartarse."
	else
		puts "Nope. Guess again: "
		guess = gets.chomp
		if guess == answer
			puts "Well done, smartarse."
		else
			puts "Nope. The correct answer is Hal 9000."
		end
	end
end