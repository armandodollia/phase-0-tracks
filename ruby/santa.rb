class Santa
  attr_reader :age, :ethnicity
  attr_accessor :gender

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

end

# Driver Code

example_genders = ["potato", "carrot", "broccoli", "male", "female", "super"]
example_ethnicities = ["Latino", "White", "Red Martian", "White Martian", "Pan-Ethnic", "Sayan"]

15.times do
  santa = Santa.new(example_genders[rand(example_genders.length)], example_ethnicities(rand(example_ethnicities.length), rand(140)))
  p santa.age
  p santa.ethnicity
  p santa.gender
end