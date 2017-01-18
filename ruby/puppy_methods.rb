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
end


#Driver Code
fido = Puppy.new
fido.fetch("bone")

fido.speak(3)
fido.roll_over