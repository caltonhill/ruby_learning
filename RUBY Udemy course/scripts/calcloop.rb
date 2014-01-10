answer = "Recoba"
tries = 0
while tries < 3
	print "Who was Inter's greatest number 20?\n"
	response = gets.chomp
	tries += 1
	if response == "recoba"
		puts "yaassss"
		exit
	elsif tries == 3
		puts "times up"
		exit
	else 
		puts "Nope. Try again."
	end
end