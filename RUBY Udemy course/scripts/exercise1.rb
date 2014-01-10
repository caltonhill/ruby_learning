puts ("What is your name, traveller?")
name = gets.chomp
puts ("Hello there, ") + name + (".")
puts
puts "Please give me a number: "
num1=gets.chomp
puts "And another number to add to it: "
num2=gets.chomp
result = Integer(num1) + Integer(num2)
puts "The result of adding your first number " + num1 + " and second number " + num2 + " is " + result.to_s
print "The result of adding " + num1 + " plus " + num2 + " is: ", result