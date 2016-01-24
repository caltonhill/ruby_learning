# loop 10 times and then come out of the loop
count = 0
score = 0

while count < 10 do
num1 = Random.rand(10)
num2 = Random.rand(10)
print "#{num1} + #{num2} = what? : "
answer = gets.chomp.to_i
  if answer == (num1 + num2)
	puts "Correct!"
	score += 1
  else 
    puts "Wrong, I'm afraid."
  end
count += 1
end	

puts "Thanks for playing."
puts "Your score is #{score}."	   