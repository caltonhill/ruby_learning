print 'Enter a sentence: '
sentence = gets.chomp
letters = sentence.split(//)
vowel_count = 0

for letter in letters
  case letter
  when 'a', 'e', 'i', 'o', 'u'
    vowel_count += 1
  end  
end

puts "The number of vowels is #{vowel_count}."
