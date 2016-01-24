answer = "watson"
tries = 0

while tries < 3
  puts "Guess the name of the computer: "
  response = gets.chomp
  tries += 1
  if response == answer
    puts "Well done!"
    exit
  elsif tries == 3
    puts "Run out of tries. It's watson."
    exit
  else
    puts "Nope. Try again."
  end
end
