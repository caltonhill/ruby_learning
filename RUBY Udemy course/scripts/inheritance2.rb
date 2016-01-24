require_relative 'class_ex3.rb'

class Square < Rectangle
  
  def initialize(x,y,w,h)
    if w != h
      w=h
    end
    super(x,y,w,h)
  end
  
  def to_string
    print("Square: ")
    print(super)
  end
end

s1 = Square.new(3,3,3,5)
puts s1.to_string