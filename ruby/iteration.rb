student_names = ["Andy", "John", "Charlie", "Donna", "Eduardo"]

student_info = {
	School: "UIC",
	Age: "20",
	Sex: "Male",
	Credits: "45",
	Peanut_alergy: true
}

student_names.each {|student| puts "The student's name is #{student}"}

student_info.each {|student_data, value| puts "#{student_data} = #{value}"}

capital_names = student_names.map do |student|
	student.upcase
end

p capital_names
p student_names

student_names.map! do |student|
	student.upcase
end

p student_names

student_data_array = student_info.map do |student_data, value|
	student_data.to_s.upcase
end

p student_data_array

#BEGIN ARRAY MODIFICATION FUNCTIONS

grades = [80, 70, 59, 63, 45, 98, 95, 75, 23, 5, 0]

def failing_grades (student_grades)
	student_grades.dup.delete_if {|score| score >= 70}
end

p failing_grades(grades)

def passing_grades(student_grades)
	student_grades.dup.keep_if {|score| score >= 70}
end

p passing_grades(grades)

def odd_grades(student_grades)
	student_grades.select {|score| score.odd?}
end

p odd_grades(grades)

def reject_grades(student_grades)
	student_grades.drop_while {|score| score.even?}
end

p reject_grades(grades)

#BEGIN HASH MODIFICATION FUNCTIONS

pant_inch_sizes = {
	s: 32,
	m: 34,
	l: 36,
	xl: 38,
	xxl: 40
}

def bigger_than_large (pant_inch_sizes)
	pant_inch_sizes.dup.delete_if {|size, circumference| circumference <= 36}
end

p bigger_than_large(pant_inch_sizes)

def smaller_than_large (pant_inch_sizes)
	pant_inch_sizes.dup.keep_if {|size, circumference| circumference < 36}
end

p smaller_than_large(pant_inch_sizes)