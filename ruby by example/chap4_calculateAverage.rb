user_numbers = []
count = 0

puts "Enter as many positive integers as you wish."
puts "I will calculate the average."
# add each integer submitted to the array
# sum all the entered numbers and then divide
# by the number of entries to get average 
  while true do
    puts "Enter a number.(Enter '-1' when finished):"
    input = gets.chomp.to_i
    user_numbers << input
    count += 1
    break if input == -1
  end
 
sum = user_numbers.inject{|sum,x| sum + x}
average = sum / count
puts "Average is #{average}"
puts sum
puts count
  if average = sum/count
    puts "Yaaaaaassssssssss!"
  end
  