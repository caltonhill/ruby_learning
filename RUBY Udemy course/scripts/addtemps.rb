tempfile = File.open "temps.txt", "a+"
day = 1
while day < 8
	print ("Enter temperature: ")
	temps =gets
	tempfile.puts(temps)
	day += 1
end
tempfile.close