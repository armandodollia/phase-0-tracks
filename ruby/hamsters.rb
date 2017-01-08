##ask user for hamster name and converts to string
puts"What is the hamster's name?"
hamster = gets.chomp.to_s

##ask user for preferred volume and convert to integer 
puts "Please give me volume level from 1 to 10"
volume = gets.chomp.to_i

puts "What color is the hamster's fur?"
fur = gets.chomp.to_s

##Asks user for candidate status, converts input to string
##and then converts to boolean for easier data management later
puts "Is the hamster a good candidate for adoption y or n"
candidate = gets.chomp.to_s
if candidate == "y"
  candidate = true
else
  candidate = false
end

puts "What is the hamster's estimated age?"
age = gets.chomp.to_i
##temporarily converts age to a string to test if it is empty then sets its value to nil
if age.to_s.empty?
  age = nil
end

##Prints different outputs based on previous data values
if candidate
  if age == 0
    puts "#{hamster} likes a volume level of #{volume}, is a good candidate for adoption, and its age is unknown"
  else
    puts "#{hamster} likes a volume level of #{volume}, is a good candidate for adoption, and is approximately #{age} years old"
  end
else
  if age == 0
    puts "#{hamster} likes a volume level of #{volume}, is not a good candidate for adoption, and its age is unknown"
  else
    puts "#{hamster} likes a volume level of #{volume}, is not a good candidate for adoption, and is approximately #{age} years old"
  end
end
