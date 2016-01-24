class Student
  def initialize(name, id)
    @name = name
    @id = id
    @grades = []
  end
  
  def to_string
    puts "Name: #{@name}"
    puts "ID: #{@id}"
    print @grades
  end
  
  def addGrade(grade)
    @grades.push(grade)
  end
  
  def gradeAvg
    total = 0
    for grade in @grades
      total += grade
    end
     return total/@grades.count
  end
end

s1 = Student.new("Jim Bob", "7898")
s1.addGrade 90
s1.addGrade 81
s1.addGrade 73

puts s1.to_string
puts s1.gradeAvg