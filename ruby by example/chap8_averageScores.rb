file_content = File.read(".\\scores.txt")

array = []
count = 0
sum = 0

file_content.split.each do |line|
	score = line.to_i
	array << score
	count += 1
	sum += score
end

average = (sum/count).round(1)

puts "The individual scores are #{array.join (' , ')}"

puts "The average score is #{average}"
	