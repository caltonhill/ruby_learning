# I had absolutely no idea on this one
# This is why I can't be a coder
# I don't understand the maths never mind the code

print "Enter a number: "
suggested_num = gets.chomp.to_i

y = (suggested_num + 1 / 2)
  (1..y-1).each do |starting_number|
	  (starting_number..y).each do |j|
		  sum = (starting_number..j).to_a.inject(0) {|sum, item| sum + item}
		    if sum == suggested_num
				puts "#{suggested_num} = #{(starting_number..j).to_a.join(' + ')}"
			end
	  end
  end
		  