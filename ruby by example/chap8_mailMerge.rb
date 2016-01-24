# need a template letter
# need to output multiple copies
# need to have names in a db/file
# need to read names from that db/file 
# substitute element in template with names

# give file name at command line 
# (this assumes file in same dir)
names_database_file = ARGV[0]

names_array = []
letter_text = 
"Dear {{first_name}},

I am celebrating my birthday on the 1st April.

Come celebrate with me...

etc etc"

db_file_contents = File.read(names_database_file)


db_file_contents.split(",").each do |name|
	names_array << name
end

friend_count=0
names_array.each do |friend|
	letter = letter_text.gsub("{{first_name}}", friend)
	friend_count += 1
	File.open("./letter"+friend_count.to_s+".txt", "w").write(letter)
end
