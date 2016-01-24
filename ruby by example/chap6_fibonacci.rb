# what I couldn't see here was
# to store each months total in an array
# which was actually necessary because needed to 
# display total each month not just final total

# number for first 2 months
array = [1,1]
num1 = 1
num2 = 1
#now get the next 10 months in a loop
# which means "last month" + "month before"
10.times do
	total = num2 + num1
	# add that to the end of the array - becomes "last month"
	array << total
	# and the previous "last month" become "month before"
	num1 = num2
	num2 = total
end
puts "Number of pairs each month are #{array.join(', ')}"