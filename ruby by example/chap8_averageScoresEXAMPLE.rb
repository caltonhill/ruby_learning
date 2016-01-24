file = File.join(File.dirname(__FILE__), "files", "score.txt")
file_content = File.read(file)

array = []
file_content,split("\n").each do |line|
	array << line.to_i
end

the_sum = array.inject{|sum,x| sum + x}
the_average = the_sum * 1.0 /array.size
the_average = the_average.round(1)
puts "Average score is #{the_average}"