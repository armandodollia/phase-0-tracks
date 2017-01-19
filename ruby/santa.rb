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

  def celebrate_birthday
    @age += 1
  end

  def get_mad_at(reindeer)
    @raindeer_ranking.insert(@raindeer_ranking.length.to_i - 1, @raindeer_ranking.delete_at(@raindeer_ranking.index(reindeer)))
  end

  def gender=(gender)
    @gender = gender
  end

  def age
    @age
  end

  def ethnicity
    @ethnicity
  end

end

santa = Santa.new("potato", "Grounder", 23)
#santa.speak
#santa.eat_milk_and_cookies("Thin Mint")


santas = []
example_genders = ["potato", "carrot", "broccoli", "male", "female", "super"]
example_ethnicities = ["Latino", "White", "Red Martian", "White Martian", "Pan-Ethnic", "Sayan"]

example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i], i)
end

#p santas
santa.get_mad_at("Rudolph")
santa.gender = "peanut"
santa.celebrate_birthday
p santa
p santa.age
p santa.ethnicity