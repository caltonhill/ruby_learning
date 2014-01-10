class Shape
	def initialize(x,y)
		@x = x
		@y = y
	end
	attr_reader :x, :y
	attr_writer :x, :y
	def to_s
		print("x: ", x, "y: ", y)
	end
	def move(x,y)
		@x += x
		@y += y
	end		
end
#Above is the super class for shape
#now we can create subclass for "rectangle"

class Rectangle < Shape
	def initialize(x,y,w,h)
		super(x,y)
		@width=w
		@height=h
	end
end

r1 = Rectangle.new(5,10,7,3)
puts(r1.to_s)
#the "to string" method can be inherited from the superclass
#but that definition doesn't include w and h

#s1 = Shape.new(10,12)
#puts(s1.to_s)
#s1.move(5,2)
#puts(s1.to_s)