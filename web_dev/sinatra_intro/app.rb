# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end


# writer a GET route that displays and address
get '/contact' do
  "316 East Geneva Rd. Wheaton IL, 60187"
end

# Write a GET route that takes name as a query parameter
get '/great_job/' do
  names = params[:name]
  if names
    "Good job, #{names}!"
  else
    "Good Job!"
  end
end

# write a GET route that adds 2 numbers together and outputs the result
get '/add/:number1/:number2' do
  number1 = params[:number1].to_i
  number2 = params[:number2].to_i
  sum = number1 + number2
  "The sum of #{number1} and #{number2} is #{sum}"
end

# Write a GET route that returns all students of that age
get '/student_age/:age' do
  age = params[:age]
  students = db.execute("SELECT * FROM students WHERE age=?", [age])
  students.to_s
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>" 
  end
  response
end
