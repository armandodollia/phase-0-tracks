class Puppy

  #build initialize method
  def initialize
    puts "Initializing new puppy instance..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  #Define speak method and iterate using times class
  def speak(repetitions)
    repetitions.times {puts "Woof!"}
  end

  #Define roll over method
  def roll_over
    puts "*rolls over*"
  end

  #define dog years calculator and output number of dog years
  def dog_years(human_years)
    human_years * 7
  end

  #define beg_for_food method accepting a boolean
  def beg_for_food(food_served)
    if food_served
      puts "Whimper"
    end
  end

end

class Kitten

  def initialize
    puts 'Initializing new kitten instance...'
  end

  def play(toy)
    if toy.downcase == 'yarn'
      puts 'Swats ball of yarn'
    elsif toy.downcase == 'laser pointer'
      puts 'Chases the dot'
    elsif toy.downcase == 'dangler'
      puts 'Jumps at the dangler'
    end     
  end

  def needs_to_poop(is_it_full)
    if is_it_full
      puts 'Goes to litter box'
    end
  end

  def needs_to_sleep(tired)
    if tired
      puts 'Takes a nap'
    end
  end

end



#Driver Code
fido = Puppy.new
fido.fetch("bone")

fido.speak(3)
fido.roll_over
puts fido.dog_years(5)
fido.beg_for_food(false)
fido.beg_for_food(true)

spot = Puppy.new

#instantiates kitten_array array
kitten_array = []

#creates 50 instances of kitten using loop
50.times {kitten_array << Kitten.new}

#Prints array to makes sure there are instances of kitten in it
#p kitten_array

#iterate through and call methods of class Kitten
kitten_array.each do |kitten_instance|
  kitten_instance.play('yarn')
  kitten_instance.needs_to_poop(true)
  kitten_instance.needs_to_sleep(true)
end









