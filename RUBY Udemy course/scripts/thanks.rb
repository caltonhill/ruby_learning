puts "What is the name of the present giver?"
name = gets.chomp
puts "What present did they give?"
present = gets.chomp
puts "How old were you on your birthday?"
age = gets.to_i
puts "What is your name?"
yourName = gets.chomp
puts
puts
puts "Dear " + name + ", "
puts "Thank you for the " + present + "."
puts "I can't believe that I am already " + age.to_s + "."
puts "Being " + age.to_s + " feels just like " + (age-1).to_s + "."
puts
puts "All the best, "
puts yourName