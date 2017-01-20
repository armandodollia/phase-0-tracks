module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yell_happily(words)
    "YAY!!! " + words + " :)"
  end
end

#driver code
puts Shout.yell_happily("We have ice cream")
puts Shout.yell_angrily("You kick my dog")