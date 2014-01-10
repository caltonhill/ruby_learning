print "Please enter a sentence: "
sentence = gets.chomp
letters = sentence.split(//) #this is the split method. split on each character
vowel_count = 0
for letter in letters
	case letter
		when "a","e","i","o","u" then vowel_count += 1
	end
end
print "Vowel count: ", vowel_count