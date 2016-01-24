#ask user to input a sentence
#with split method chop up the sentence ..
#into an array of words. (I think)
#Then count how many items in the array?

puts "Enter your sentence, oh pungent one: "
sentence = gets.chomp

words_array = sentence.split

puts words_array
puts "That sentence contains #{words_array.size} words."
