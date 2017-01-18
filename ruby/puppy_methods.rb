class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  #Define speak method and iterate using times class
  def speak(repetitions)
    repetitions.times {puts "Woof!"}
  end

end


#Driver Code
fido = Puppy.new
fido.fetch("bone")

fido.speak(3)