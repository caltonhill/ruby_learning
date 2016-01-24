alphabet = ("a".."z").to_a
number = nil


puts "I know the alphabet very well."
puts "Enter a number from 1-26 and I will tell you"
puts "the corresponding letter. (Enter 0 to quit):"
input = gets.chomp.to_i

  while true 
	  number = input - 1
    puts "That's #{alphabet[number]}"
	  print "Another?: "
	  input = gets.chomp.to_i
    break if input == 0
  end
puts "Ok. Bye!"
  