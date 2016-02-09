#population density is number of people per square mile as of 2012
#this data is updated every year with estimates from a 10 year census

STATE_DATA = {
  "Alabama" => {population_density: 94.65, population: 4822023},
  "Alaska" => {population_density: 1.1111, population: 731449},
  "Arizona" => {population_density: 57.05, population: 6553255},
  "Arkansas" => {population_density: 56.43, population: 2949131},
  "California" => {population_density: 244.2, population: 38041430},
  "Colorado" => {population_density: 49.33, population: 5187582},
  "Connecticut" => {population_density: 741.4, population: 3590347},
  "Delaware" => {population_density: 470.7, population: 917092},
  "Florida" => {population_density: 360.2, population: 19317568},
  "Georgia" => {population_density: 172.5, population: 9919945},
  "Hawaii" => {population_density: 216.8, population: 1392313},
  "Idaho" => {population_density: 19.15, population: 1595728},
  "Illinois" => {population_density: 231.9, population: 12875255},
  "Indiana" => {population_density: 182.5, population: 6537334},
  "Iowa" => {population_density: 54.81, population: 3074186},
  "Kansas" => {population_density: 35.09, population: 2885905},
  "Kentucky" => {population_density: 110.0, population: 4380415},
  "Louisiana" => {population_density: 105.0, population: 4601893},
  "Maine" => {population_density: 43.04, population: 1329192},
  "Maryland" => {population_density: 606.2, population: 5884563},
  "Massachusetts" => {population_density: 852.1, population: 6646144},
  "Michigan" => {population_density: 174.8, population: 9883360},
  "Minnesota" => {population_density: 67.14, population: 5379139},
  "Mississippi" => {population_density: 63.50, population: 2984926},
  "Missouri" => {population_density: 87.26, population: 6021988},
  "Montana" => {population_density: 6.86, population: 1005141},
  "Nebraska" => {population_density: 23.97, population: 1855525},
  "Nevada" => {population_density: 24.8, population: 2758931},
  "New Hampshire" => {population_density: 147.0, population: 1320718},
  "New Jersey" => {population_density: 1205, population: 8864590},
  "New Mexico" => {population_density: 17.16, population: 2085538},
  "New York" => {population_density: 415.3, population: 19570261},
  "North Carolina" => {population_density: 200.6, population: 9752073},
  "North Dakota" => {population_density: 9.92, population: 699628},
  "Ohio" => {population_density: 282.5, population: 11544225},
  "Oklahoma" => {population_density: 55.22, population: 3814820},
  "Oregon" => {population_density: 40.33, population: 3899353},
  "Pennsylvania" => {population_density: 285.3, population: 12763536},
  "Rhode Island" => {population_density: 1016, population: 1050292},
  "South Carolina" => {population_density: 157.1, population: 4723723},
  "South Dakota" => {population_density: 10.86, population: 833354},
  "Tennessee" => {population_density: 156.6, population: 6456243},
  "Texas" => {population_density: 98.07, population: 26059203},
  "Utah" => {population_density: 34.3, population: 2855287},
  "Vermont" => {population_density: 67.73, population: 626011},
  "Virginia" => {population_density: 207.3, population: 8185867},
  "Washington" => {population_density: 102.6, population: 6724540},
  "Washington,D.C."=> {population_density: 10357, population: 632323},
  "West Virginia" => {population_density: 77.06, population: 1855413},
  "Wisconsin" => {population_density: 105.2, population: 5726398},
  "Wyoming" => {population_density: 5.851, population: 576412}
}


# Virus Predictor

# I worked on this challenge with Rene Castillo.
# We spent 1 hours on this challenge.

# EXPLANATION OF require_relative
#  require_Relative asserts that specific variables be present in the global environment before the program begins to execute, else it raises an exception. It works by checking if the variable is declared in the program. The difference between require_relative and require is that require_relative is used primarily for variables while require is mainly used for modules in the Ruby library.

# require_relative 'state_data'

class VirusPredictor
#   turning variables into instance variables
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

#   calling methods and passing the instance variables as arguments
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

#   makes methods below private; limits method scope to within the class
  private

#   calculates predicted death, prints string
  def predicted_deaths
    # predicted deaths is solely based on population density
    case @population_density
      when @population_density >= 200 then rate = 0.4  
      when @population_density >= 150 then rate = 0.3 
      when @population_density >= 100 then rate = 0.2 
      when @population_density >= 50 then rate = 0.1 
      else rate = 0.05 
    end
    number_of_deaths = (@population * rate).floor

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
  
# calculates the speed of the spread, prints string
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    case @population_density
      when @population_density >= 200 then speed = 0.5
      when @population_density >= 150 then speed = 1
      when @population_density >= 100 then speed = 1.5
      when @population_density >= 50 then speed = 2
      else speed = 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

STATE_DATA.each do |state,data|         
  VirusPredictor.new(state,data[:population_density],data[:population]).virus_effects
end


#=======================================================================
# Reflection Section

=begin

What are the differences between the two different hash syntaxes shown in the state_data file?
  The differences is both in the string/symbol differentiation as well as the
  colon and rocket notation--both are valid ways to declare, but one allows
  for easier use of symbols and can be more efficient performance-wise.


What does require_relative do? How is it different from require?
  require_relative requires a specific variable to be defined in the env
  before continuing to execute. Require is like an import statement for
  various Ruby libraries to be used.


What are some ways to iterate through a hash?
  You can use .each, which will go through each key/value pair or you can
  use each_index if you need to access the index of each for some reason.


When refactoring virus_effects, what stood out to you about the variables, if anything?
  Having instance variables makes simplifying functions a whole lot easier, 
  since you don't have to pass data through arguments constantly. This allowed
  us to simplify the code by eliminating the arguments being passed into
  each function from virus_effects.


What concept did you most solidify in this challenge?
  Refactoring is a lot easier with people helping you--two sets of eyes with
  different ways to refactor make for very clean code!


=end