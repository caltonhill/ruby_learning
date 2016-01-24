# get a number and store all divisors in an array
# get another number and store all divisors in another array
# from one array check from large to small whether the divisor is also in the other array

puts "Enter a number: "
num1 = gets.chomp.to_i
puts "Enter a second number: "
num2 = gets.chomp.to_i

start_time = Time.now
# the part below tries to ensure which is large number
# it's a bit crappy
# because when I repeat numbers to user below the order may have
# been reversed
if num1 > num2
   num1, num2 = num2, num1
end

common_multiples = []
for i in (num2..num2*num1).step(num2) do
	# slows down hugely if no stepping above
	# ie. (num2..num2*num1).each do
	  if (i % num2 == 0) && (i % num1 == 0)
		  common_multiples << i
	  end
end
puts common_multiples.join(", ")
puts "LCM of #{num1} and #{num2} is #{common_multiples.min}"
puts "Calculation took #{Time.now - start_time} seconds."