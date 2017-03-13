# Virus Predictor
# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.
# EXPLANATION OF require_relative
# require relative points you to a file it compliments the require method
# use require relative when you want to point to something specific. require alone will 
# search through files to find the right source
require_relative 'state_data'
class VirusPredictor
# this will initialize the class 
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
    @speed = 0
  end
# it is running the predicted deaths & speed of spread methods. 

  def virus_effects 
    predicted_deaths
    speed_of_spread
  end
  
# responsible for prediciting the number of deaths per state based 
# on the population and population density
  private

  def predicted_deaths
    # predicted deaths is solely based on population density
    def predicted_deaths
    # predicted deaths is solely based on population density
    case @population_density
    when (0...50)   
    num = 0.05 
    when (50...100)   
    num = 0.1
    when (100...150)  
    num = 0.2 
    when (150...200) 
    num = 0.3  
    else   
    num = 0.4   
    end
    
    number_of_deaths = (@population * num).floor
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"
  end
    
# responsible for using the population density for predicting the speed fo spread
# in each state
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    @speed = 0.0
    if @population_density >= 200
      @speed += 0.5
    elsif @population_density >= 150
      @speed += 1
    elsif @population_density >= 100
      @speed += 1.5
    elsif @population_density >= 50
      @speed += 2
    else
      @speed += 2.5
    end
    puts " and will spread across the state in #{@speed} months.\n\n"
  end
end
#=======================================================================
# DRIVER CODE
 # initialize VirusPredictor for each state
STATE_DATA.each do |state, value|
  state = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population])
  state.virus_effects
end
alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects
# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects
# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects
# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects
#=======================================================================
# Reflection Section

# -One of the hashes uses symbols and the other hash does not use symbols.  
# - Require relative is different from require because require relative is used when you know where the data is coming from.  For example, you would use require relative when the data
#   is coming from the same directory.  Require searches everywhere to import the data, so it takes longer for require to function.
# - You can use a .each, .each_key, .each_pair, or .each_value on a hash to iterate through it
# - When working on virus_effects it stood out that all the variables were repetitive and that you didn't need any of the variables.
# - The concept I most solidified was the idea of making code more DRY, to really look and code to see whether it is repetitive or not.  