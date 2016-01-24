# a function returns lcm for a and b
def lcm(a,b)
	(a..a*b).each do |n|
		if n % a == 0 && n % b == 0
			return n
			next
		end
	end
end

m = 1
(2..15).each do |w|
	m = lcm(m,w)
end

puts "The LCM of 1 to 15 is #{m}"	