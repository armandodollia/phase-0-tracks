#ask user input and convert to correct variable types
puts "What is you name?"
identifier = gets.chomp.to_s

puts "How old are you?"
age = gets.chomp.to_i

puts "What year were you born?"
year = gets.chomp.to_i

##checks user input for garlic aversion and store the value as a boolean
puts "Our company cafeteria serves garlic bread. Should we order some for you?"
if gets.chomp.to_s == "yes"
  garlic_preference = true
else
  garlic_preference = false
end

#checks input for health insurance and stores as a boolean
puts "Would you like to enroll in the company’s health insurance?"
if gets.chomp.to_s == "yes"
  insurance = true
else
  insurance = false
end

##calculate age from birth year given
calculated_age = Time.new.year - year

##test age match and store value
if calculated_age == age
  age_match = true
else
  age_match = false
end

##verify if user is vampire
if identifier == "Drake Cula" || identifier == "Tu Fang"
  puts "Definitely a vampire."  
else
  if age_match && (garlic_preference || insurance)
    puts "Probably not a vampire."
  elsif !(age_match && (garlic_preference || insurance))
    puts "Probably a vampire."
  elsif !(age_match && garlic_preference && insurance)
    puts "Almost certainly a vampire."
  else
    puts "Results inconclusive"
  end
end