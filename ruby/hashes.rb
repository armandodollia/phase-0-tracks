#Ask user to input each type of data

#create a hash for the expected data
#convert and store the data in the hash using appropriate functions

#print hash to the user
#ask the user if corrections are necessary

#construct if else block to parse user input and update the hash
#print latest hash


#create hash object
client_info = {
  name: nil,
  age: nil,
  number_of_children: nil,
  decor_theme: nil,
  is_colorblind: nil
}

#Ask for user input and convert to appropriate value
puts "What is the client's name?"
client_info[:name] = gets.chomp.to_s

puts "What is the client's age?"
client_info[:age] = gets.chomp.to_i

puts "How many children does the client have?"
client_info[:number_of_children] = gets.chomp.to_i

puts "What decor theme does the client prefer?"
client_info[:decor_theme] = gets.chomp.to_s

#convert user input to a boolean value using if else block
puts "Is the client colorblind?"
if gets.chomp.to_s == "yes"
  client_info[:is_colorblind] = true
else
  client_info[:is_colorblind] = false
end

p client_info

#ask user which key needs to be updated
puts "Which key would you like to update?"
response = gets.chomp.to_s
symbol_response = response.to_sym

if response == 'none'
  p client_info

elsif symbol_response == :name
  puts "Enter the updated client name"
  client_info[:name] = gets.chomp.to_s

elsif symbol_response == :age
  puts "Enter the updated client age"
  client_info[:age] = gets.chomp.to_i

elsif symbol_response == :number_of_children
  puts "Enter the client's updated number of children"
  client_info[:number_of_children] = gets.chomp.to_i

elsif symbol_response == :decor_theme
  puts "Enter the updated decor theme"
  client_info[:decor_theme] = gets.chomp.to_s

elsif symbol_response == :is_colorblind
  puts "Is the client colorblind?"

  if gets.chomp.to_s == "yes"
    client_info[:is_colorblind] = true
  else
    client_info[:is_colorblind] = false
  end
end

p client_info