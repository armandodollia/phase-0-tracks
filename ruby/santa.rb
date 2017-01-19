class Santa

  def initialize(gender, ethnicity, age)
    puts "Initializing Santa instance ..."
    @gender = gender
    @ethnicity = ethnicity
    @raindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = age.to_i
  end

  def speak
  puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies (cookie_type)
    puts "That was a good #{cookie_type}!"
  end


end

santa = Santa.new
santa.speak
santa.eat_milk_and_cookies("Thin Mint")

