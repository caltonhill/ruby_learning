#until loop structure is like this:
#until (some comparison)
#	statements
#end
# until the comparison becomes true the statements are executed
#count = 0
#until count >=5
#	puts "arsecake"
#	count += 1
#end	
sum = 0
number = 1
until number > 10
	sum += number
	number += 1
end
puts sum
