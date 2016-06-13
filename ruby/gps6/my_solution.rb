# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'

class VirusPredictor

  # creates and stores instance variables
  
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # Prints the next 2 methods togther
  
  def virus_effects
    puts "#{@state} will lose #{predicted_deaths} people in this outbreak and will spread across the state in #{speed_of_spread} months.\n\n"
  end

    private
  
  def population_range
    if (0...50).cover?(@population_density)
      return "low"
    elsif (50...100).cover?(@population_density)
      return "low_med"
    elsif (100...150).cover?(@population_density)
      return "med"
    elsif (150...200).cover?(@population_density)
      return "med_high"
    else
      return "high"
    end
  end

  # it take the population density to see the proportion of the population that is going to die, prints the number of people that are going to die
  
  def predicted_deaths
    # predicted deaths is solely based on population density
    case population_range
      when "low"
        number_of_deaths = (@population * 0.05).floor
      when "low_med"
        number_of_deaths = (@population * 0.1).floor
      when "med"
        number_of_deaths = (@population * 0.2).floor
      when "med_high"
        number_of_deaths = (@population * 0.3).floor
      when "high"
        number_of_deaths = (@population * 0.4).floor
    end

    # print "#{@state} will lose #{number_of_deaths} people in this outbreak"
    number_of_deaths
  end
  
  # it take the population density to see how fast the proportion of the population that is going to be infected, prints the number of months it will take
  
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    months = 0.0
    case population_range
      when "low"
        months = 2.5
      when "low_med"
        months = 2
      when "med"
        months = 1.5
      when "med_high"
        months = 1
      when "high"
        months = 0.5
    end

    # puts " and will spread across the state in #{speed} months.\n\n"
    months
  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


STATE_DATA.each do |state, data|
 state_vp = VirusPredictor.new(state, data[:population_density], data[:population])
state_vp.virus_effects
end

#alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
#alabama.virus_effects

#jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
#jersey.virus_effects

#california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
#california.virus_effects

#alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
#alaska.virus_effects


#=======================================================================
# Reflection Section
# 1. The => syntax can take anything as the key, while the key: value syntax makes the key a symbol. This is why you can do "key" = value or :key = value.
# 2. require_relative imports everything in another file and uses a relative path from the file you're importing it into. require searches your load path for what you're trying to add. It's usually used with gems.
# 3. One way is to use the .each method, which gives you |key, value|. Another way is to use the .keys method to get an array of all of the keys and then make a loop for the length of that array that access the hash for each key.
# 4. We were passing instance variables into the private methods, which makes no sense as nobody could call those methods with anything else (they're private) and we already have access to the instance varaibles inside the methods.
# 5. The concepts I most solidified were what kinds of things you would want to refactor for readability (like using case statements and ranges) and the syntax of case statements : )
