# A utility which can take the name/location
# of a file as cmd line argument
# and return the number of words and lines in the file
# "ruby PROGNAME FILENAME"

file_to_use = ARGV[0]
puts "The command line argument is: #{file_to_use}"


# Code how to count words and lines from a file

# read contents of a file

file_content = File.read(file_to_use)
lines_count = 0
words_count = 0


file_content.split("\n").each do |line|
	lines_count +=1
end

puts "There are #{lines_count} lines."

file_content.split(" ").each do |word|
	words_count += 1
end

puts "There are #{words_count} words."