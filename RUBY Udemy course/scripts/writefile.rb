#outfile is just our chosen name, could be anything
outfile = File.new "myfile.txt", "w" # w indicates writing to file
outfile.print "Hello, world" # can do either
outfile.print "\n"
outfile.puts "Goodbye, world" # can do either
outfile.puts 1001  #this will be written out as text not a number
outfile.print 2*2
outfile.close # must close file