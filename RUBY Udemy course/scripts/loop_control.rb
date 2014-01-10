cont = 'y'
while cont == 'y'
	print "Enter a numerator: "
	numerator = Integer gets.chomp
	print "Enter a denominator: "
	denom = Integer gets.chomp
	if denom == 0 then
		redo
	end
	puts numerator/denom
	print "More? y/n "
	cont = gets.chomp
end