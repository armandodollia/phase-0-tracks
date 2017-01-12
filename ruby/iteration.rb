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

grades = [80, 70, 59, 63, 45, 98, 95, 75, 23, 5, 0]

def failing_grades (grades)
	grades.delete_if {|score| score >= 70}
end

p failing_grades(grades)