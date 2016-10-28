# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'

class VirusPredictor
  attr_accessor :population_density, :population

  # Initialize method, taking 3 parameters, each parameter initialized to becomes value of instance variable
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # run the two methods notated below
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

 # private
  # takes a range of population densities and returns the number of deaths based on that range
  def predicted_deaths

    i = 0

    case @population_density 
      when 0...50 
        i = 0.05 
      when 50...100 
        i = 0.1
      when 100...150 
        i = 0.2
      when 150...200 
        i = 0.3
      else 
        i = 0.4
    end

    number_of_deaths = (@population * i).floor

   
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"
  end





  # takes population density range and state and adds speed based on that range
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    case @population_density 
      when 0...50 
        speed += 2.5 
      when 50...100 
        speed += 2
      when 100...150 
        speed += 1.5
      when 150...200 
        speed += 1
      else 
        speed += 0.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |all_states, population_data|
  each_state = VirusPredictor.new(all_states, population_data[:population_density], population_data[:population])
  each_state.virus_effects
end
=begin
 STATE_DATA.each_key do |all_states|
  each_state = VirusPredictor.new(all_states, STATE_DATA[all_states][:population_density],STATE_DATA[all_states][:population])
  each_state.virus_effects
 end



alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects
=end

#=======================================================================
# Reflection Section