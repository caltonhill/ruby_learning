require 'date'

class Person
	attr_accessor :name, :birth_date
	def initialize(name, birth_date)
		@name = name
		@birth_date = birth_date
	end
	
	def age
		dob = Date.parse(birth_date)
		current_date = Date.today
		days_passed = (current_date - dob).to_i
		#this calculation is wrong. just approximation
		age_yrs = days_passed/365
	end
end

class Student < Person
	attr_accessor :grade
	def initialize(name, birth_date, grade)
		super(name, birth_date)
		@grade = grade
	end
end

class Teacher < Person
end

teachers = []
students = []

teachers << Teacher.new("Jim Jimson", "1968-04-03")
teachers << Teacher.new("Pop Weasel", "1978-01-02") 

students << Student.new("Jump Leads", "1999-10-03", 10) 
students << Student.new("Lotto Nums", "1999-05-07", 11)
students << Student.new("Big Eck", "1998-12-03", 10)
students << Student.new("Tippi Toes", "1999-09-10", 10)

puts teachers.join(",")
puts students.join(",")

# calculate average age of teachers
teachers_age_sum = 0
teachers.each do |teacher|
	teachers_age_sum += teacher.age
	end
teachers_average_age = teachers_age_sum / teachers.length

#calculate average age of students with grade of 10
grade_10_students = []
students.each do |student|
	if student.grade == 10
		grade_10_students << student
	end
end

grade_10_students_age_sum = 0
grade_10_students.each do |grade_10_student|
	grade_10_students_age_sum += grade_10_student.age
	end
grade_10_students_average_age = grade_10_students_age_sum / grade_10_students.length	

# output
puts "First task was to calculate a teacher's age"
puts "Teacher #{teachers[0].name} is #{teachers[0].age}"
puts "Teacher #{teachers[1].name} is #{teachers[1].age}"
puts
puts "Second task was to calculate the average age of teachers"
puts "Average age of teachers is #{teachers_average_age}"
puts
puts "Third task was to calculate the average age of students with grade of 10"
puts "Average age of Grade 10 students is #{grade_10_students_average_age}"



