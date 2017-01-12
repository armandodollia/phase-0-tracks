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