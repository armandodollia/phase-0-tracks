class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

end


#Driver Code
fido = Puppy.new
fido.fetch("bone")