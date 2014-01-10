class Name
	def initialize(first, middle, last)
		@first = first
		@middle = middle
		@last = last
	end
	
	def first
		@first
	end
	def middle
		@middle
	end
	def last
		@last
	end
	
	def to_s
		print(@last + ", " + @first + ", " + @middle + ", ")
	end
end

aName = Name.new("Jane","Elizabeth","Brown")
print aName.to_s
print "\n"
print aName.first	
print "\n"
print "First name: " + aName.first