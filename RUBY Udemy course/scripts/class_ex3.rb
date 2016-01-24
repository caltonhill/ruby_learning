class Shape
  def initialize(x, y)
    @x = x
    @y = y
  end

  attr_reader :x, :y
  attr_writer :x, :y
  
  def to_string
    puts "x: #{@x}, y: #{@y}"
  end
  
  
  def move(x,y)
    @x += x
    @y += y
  end
end

s1 = Shape.new(11,15)
puts s1.to_string

s1.move(3,9)

puts s1.to_string 
