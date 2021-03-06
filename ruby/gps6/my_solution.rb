# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# It copies the code of a class file in the same directory
# and puts it in the code. Require needs the files location to be inserted
require_relative 'state_data'

class VirusPredictor
  #should add getter method for number_of_deaths, speed and state

  # Initializes the class and sets the attributes when instantiated
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # Calls predicted_deaths and speed_of_spread methods
  # virus_effects method and private method can be removed completely, allowing the user to just call the encapsulated methods individually
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  # Determines the number of deaths based on population density (truncates to an integer)
  def predicted_deaths
    # predicted deaths is solely based on population density
    # number_of_deaths should be initialized as class attribute allowing for a getter method
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    #Print method can be removed allowing information to be printed in the driver code
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # Determines how fast the virus will spread across a state in months based on the state's population density
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0 #this can be made into a class attribute allowing a getter

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end
    #Print method can be removed allowing information to be printed in the driver code
    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state
states = []

STATE_DATA.each do |state, state_value| 
  state = VirusPredictor.new(state, state_value[:population_density], state_value[:population])
  state.virus_effects
end

#=======================================================================
# Reflection Section