##Create counter variable
counter = 0

##ask user for number of employees
puts "How many employees will be processed?"
employees = gets.chomp.to_i

while counter < employees  
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

  ##begin until loop asking the user for allergies
  allergy_input = nil ##sets initial value of user input
  until allergy_input == "sunshine" || allergy_input == "done"
    puts "Please name any allergies one at a time, type done when complete"
    allergy_input = gets.chomp.to_s
    if allergy_input == "sunshine"
      vampire = true
    else
      vampire = false
    end
  end

  ##calculate age from birth year given
  calculated_age = Time.new.year - year

  ##test age match and store value
  if calculated_age == age
    age_match = true
  else
    age_match = false
  end

  ##verify if user is vampire using if blocks and logic expressions
  if identifier == "Drake Cula" || identifier == "Tu Fang"
    puts "Definitely a vampire."
  elsif vampire
    puts "Probably a vampire."
  else
    if age_match && (garlic_preference || insurance) && vampire == false
      puts "Probably not a vampire."
    elsif age_match != true && (garlic_preference || insurance)
      puts "Probably a vampire."
    elsif age_match != true && garlic_preference != true && insurance != true
      puts "Almost certainly a vampire."
    else
      puts "Results inconclusive"
    end
  end

  ##Iterate counter by 1
  counter += 1
end
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."