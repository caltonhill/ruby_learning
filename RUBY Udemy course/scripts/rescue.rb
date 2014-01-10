begin
	print 3/1
	File.open "arsecake.txt"
rescue ZeroDivisionError
	print "Can't divide by 0 dumbo."
rescue SystemCallError
	print "No such file, chimp."
end