module Shout
  def yell_angrily(words)
    puts words + "!!!" + " :("
  end

  def yell_happily(words)
    puts "YAY!!! " + words + " :)"
  end
end

class Toddler
  include Shout
end

class Significant_other
  include Shout
end

#driver code
#puts Shout.yell_happily("We have ice cream")
#puts Shout.yell_angrily("You kick my dog")

johnny = Toddler.new
johnny.yell_angrily("I WANT AN IPHONE")

girlfriend = Significant_other.new
girlfriend.yell_happily("Ice Cream")