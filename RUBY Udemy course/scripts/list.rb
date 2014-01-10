begin
	print "Which file do you want to examine? :"
	name = gets.chomp
	myFile = File.open(name)
	lines = myFile.read
	puts lines
rescue
	print "No such file. Try another filename: "
	retry #sends control of prog back to beginning
end