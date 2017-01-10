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

puts "Is the client colorblind?"
if gets.chomp.to_s == "yes"
  client_info[:is_colorblind] = true
else
  client_info[:is_colorblind] = false
end

p client_info