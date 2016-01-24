array = []
input = nil
puts "Enter child names in class: (0 to finish)"
until input == "0"
	input = gets.chomp
	if input != "0"
		array << input
	end
end
puts "Kids in order: "
puts array.sort.join(", ")