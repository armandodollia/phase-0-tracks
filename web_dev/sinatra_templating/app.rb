# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  p @students
  erb :home
end

get '/students/new' do
  erb :new_student
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

get '/campus' do
  erb :new_campuses
end

post '/campus/creator' do
  create_table_cmd = <<-SQL
    CREATE TABLE IF NOT EXISTS campuses(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255)
    )
    SQL
    db.execute(create_table_cmd)
    db.execute("INSERT INTO campuses (campus) values (?)", [params['campus']])
    redirect "/campus/printer"
end
# add static resources