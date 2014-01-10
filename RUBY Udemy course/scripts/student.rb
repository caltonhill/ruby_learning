class Student
	def initialize(name, id)
		@name=name
		@id=id
		@grades=[]
	end
	def to_s
		puts "Name: " + @name
		puts "Id: " + @id
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

s1 = Student.new("Jimmy Jam", "001")
s1.addGrade(65)
s1.addGrade(90)
puts s1.to_s
print(s1.gradeAvg)