#Class can be thought of as definition of an..
#Abstract Data Type.  Which contains:
# - properties (or attributes)
# - behaviours (or operations)
#ADT Name
#Properties/Attributes
#	First
#	Middle
#	Last
#Behaviours/Operations
#	First, Middle, Last
#	Last, First, Middle
# 	Initials


class Name
   def initialize(first, middle, last)
      @first = first
      @middle = middle
      @last = last
   end

   def to_s
      print(@last + ", " + @first + " " + @middle)
   end
end

aName = Name.new("Jane","Elizabeth","Brown")
print aName.to_s