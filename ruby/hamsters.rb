##ask user for hamster name and volume
puts"What is the hamster's name?"
hamster = gets.chomp

puts "Please give me volume level from 1 to 10"
volume = gets.chomp

puts "What color is the hamster's fur?"
fur = gets.chomp

puts "Is the hamster a good candidate for adoption y or n"
candidate = gets.chomp

puts "What is the hamster's estimated age?"
age = gets.chomp

if age.blank?
  age = nil
else
  age = age.to_i
end

puts age