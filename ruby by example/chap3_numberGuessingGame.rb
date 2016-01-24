
secret_num = Random.rand(10)
guesscount = 0

while true do
	puts "I have a secret number (0-9). Can you guess it?"	
	guess = gets.chomp.to_i	
	guesscount += 1
	# check if guess is greater than, smaller than or equal to the secret
		if guess > secret_num
		  puts "Too big!"	
	    elsif guess < secret_num
		  puts "Too small!"
	    else guess == secret_num
		  puts "Correct! You needed #{guesscount} guesses. Bye."
		  break
		end
end


	