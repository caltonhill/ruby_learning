puts "I am an adding machine, and I am good at it."
puts "Enter a first number: "
first_int = gets.chomp.to_i
puts "Enter a second number: "
second_int = gets.chomp.to_i
puts "Thinking ..."
sleep 3
puts "Got it, the answer is: #{first_int + second_int}"