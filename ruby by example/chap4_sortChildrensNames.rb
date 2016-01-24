# accept user input of a series of names. user enters 0
# to signal end of input
# store names in an array
# display the stored names in alpha order

names_array = []

while true do 
print "Enter childrens names (enter STOP to finish):"
input = gets.chomp
  if input != 'STOP'
	names_array << input
  else
	 break
  end
end
puts "Names in order:"
print names_array.sort.join(", ")


