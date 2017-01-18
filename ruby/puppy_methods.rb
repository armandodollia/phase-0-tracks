class Puppy

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


#Driver Code
fido = Puppy.new
fido.fetch("bone")

fido.speak(3)
fido.roll_over
puts fido.dog_years(5)
fido.beg_for_food(false)
fido.beg_for_food(true)