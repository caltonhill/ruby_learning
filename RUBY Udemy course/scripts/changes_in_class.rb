class Name
	def initialize(first, middle, last)
		@first = first
		@middle = middle
		@last = last
	end
	attr_reader :first, :middle, :last
	attr_writer :first, :middle, :last
	
	def to_s
		print(@last + ", " + @first + ", " + @middle + ", ")
	end
end

aName = Name.new("Jane","Elizabeth","Brown")
aName.first = "Cock"
aName.middle = "Piss"
aName.last = "Partridge"
print aName.to_s
print "\n"
print aName.last
print "\n"
print aName.first

