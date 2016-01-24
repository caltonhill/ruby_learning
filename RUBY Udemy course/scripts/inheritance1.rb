require_relative 'class_ex3.rb'


class Rectangle < Shape
  def initialize(x,y,w,h)
    super(x,y)
    @height = h
    @width = w
  end
  
  def to_string
    print super
    print("height: ", @height.to_s + "width: ", @width.to_s)
  end
end

r1 = Rectangle.new(5,7,10,'8')
puts r1.to_string
