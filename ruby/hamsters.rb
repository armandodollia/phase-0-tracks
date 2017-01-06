##ask user for hamster name and volume
puts"What is the hamster's name?"
hamster = gets.chomp.to_s

puts "Please give me volume level from 1 to 10"
volume = gets.chomp.to_i

puts "What color is the hamster's fur?"
fur = gets.chomp.to_s

puts "Is the hamster a good candidate for adoption y or n"
candidate = gets.chomp.to_s
if candidate == "y"
  adoptable = true
else
  adoptable = false
end

puts "What is the hamster's estimated age?"
age = gets.chomp.to_i

if age.to_s.empty?
  age = nil
end

if adoptable
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
