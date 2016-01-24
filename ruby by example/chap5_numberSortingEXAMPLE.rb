# take input of 10 numbers and store them in an array

num_array = []
puts "Input 10 integers: "

10.times do 
	number = gets.chomp.to_i
	num_array << number
end

puts "In order: #{num_array.sort}"

num_array.each_with_index do   
 |num, idx|   #iterate through the array
   (idx+1..num_array.size()-1).each do |idx2| #from 2nd item to last make them idx2
	   if num_array[idx] > num_array[idx2]  #see if 1st item is greater than current 2nd
		   num_array[idx], num_array[idx2] = num_array[idx2], num_array[idx] 
		   #if so swap them over - put greater one towards the end
	   end
    end
end

puts "Sorted complicated way: #{num_array.join(', ')}"