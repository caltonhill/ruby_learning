first_command_line_argument = ARGV[0]

input_file_path = File.join(".", first_command_line_argument)
input_file_full_path = File.expand.path(input_file_path)

file_content = File.read(input_file_full_path)

word_count = file_content.split.size
line_count = file_content.split("\n").size

puts "#{first_command_line_argument} contains #{word_count} words in #{line_count} lines"