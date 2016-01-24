class Person
  
  def initialize(name, age, gender)
    @name = name
    @age = age
    @gender = gender
  end
  
  def to_string
    puts "Name: #{@name}"
    puts "Age: #{@age}"
    puts "Gender: #{@gender}"
  end
  
  def birthday
    @age += 1
  end
  
end

p1 = Person.new("Bill", 36, "male")
p2 = Person.new("Tammy", 82, "female")

puts p1.to_string
puts p2.to_string

p1.birthday
puts p1.to_string