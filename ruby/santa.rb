class Santa
  #create getter and setter methods
  attr_reader :age, :ethnicity
  attr_accessor :gender

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance ..."
    @gender = gender
    @ethnicity = ethnicity
    @raindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def speak
  puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies (cookie_type)
    puts "That was a good #{cookie_type}!"
  end

  #Increase age by 1
  def celebrate_birthday
    @age += 1
  end

  #Moves bad reindeer to the last spot in the array
  def get_mad_at(bad_reindeer)
    @raindeer_ranking.insert(@raindeer_ranking.length.to_i - 1, @raindeer_ranking.delete_at(@raindeer_ranking.index(bad_reindeer)))
  end

end

# Driver Code

example_genders = ["potato", "carrot", "broccoli", "male", "female", "super"]
example_ethnicities = ["Latino", "White", "Red Martian", "White Martian", "Pan-Ethnic", "Sayan"]



#creates 15000 santas
15000.times do
  #adds random attributes to santa using rand method (Upper bounds for randomness set by length of respective array minus 1)
  santa = Santa.new(example_genders[rand(example_genders.length.to_i - 1)], example_ethnicities[rand(example_ethnicities.length.to_i - 1)])
  rand(140).times {santa.celebrate_birthday}
  p santa.age
  p santa.ethnicity
  p santa.gender
end


