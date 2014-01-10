nums = [5,2,8,3,1,6]
min = 5
for i in nums
	if i > min   #should be a < to work
		min = i
	end
end
puts "The minimum value is " + min.to_s