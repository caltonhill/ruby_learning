guest_list = ["Pokkle", "Angela", "Tonpa", "Toby", "Biscuit", "Mito", "Kate", "Renee", "Chloe", "Kelly", "Melody"]

invitation = "Dear
	{{first_name}},
	
	I am celebrating my 12th birthday on the 1st of April.
	Come celebrate with me!
	
	Hope to see you there,
	
	Jessica"
	
	guest_list.each do |name|
		named_invitation = invitation.gsub("{{first_name", name)
		puts named_invitation
	
		File.open("C:\\Users\\you\\\rubycode\\#{name.downcase}_invitation.txt", "w"\).write(named_invitation)
	end