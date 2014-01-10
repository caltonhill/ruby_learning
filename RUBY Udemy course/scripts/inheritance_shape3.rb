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
	
	def to_s  #re-defining "over-riding" the superclass method
		print(super)  #this draws the elements of to_s defined in the superclass
		print "height: ", @height.to_s + "width: ", @width.to_s
	end    #always think about converting numerics to strings!
end

class Square < Rectangle
	def initialize(x,y,w,h)
		if w != h
			w = h
		end
		super(x,y,w,h)
	end
	
	def to_s
		print "Square: "
		print super
	end
end
r1 = Rectangle.new(5,10,7,3)
puts r1.to_s
r2 = Rectangle.new(1,2,2,4)
puts r2.to_s
s1 = Square.new(7,12,4,4)
puts s1.to_s
s2 = Square.new(10,12,9,7)#not a square but if statement in 
# initialize def for Square class will fix this
