# Die Class 1: Numeric

# I worked on this challenge by myself

# I spent 1 hours on this challenge.

# 0. Pseudocode

# Input: number of sides
# Output: a Die instance
# Steps: 
=begin
	
DEF initialize with argument sides
	IF sides is less than 1 raise an error.
	ELSE set @sides to the value of sides.
END

DEF sides
	return @sides
end

DEF roll
	return a random number between 1 and @sides.
END
=end


# 1. Initial Solution

class Die
  def initialize(sides)
  	(sides < 1) ? (raise ArgumentError.new("Sides must be greater than 0")) : (@sides = sides)
  end

  def sides
    @sides
  end

  def roll
    rand(1..@sides)
  end
end



# 3. Refactored Solution
# no refactoring required.

# 4. Reflection

=begin
What is an ArgumentError and why would you use one?
	An ArgumentError is raised when the arguments passed into a function are of the wrong format (wrong number of arguments, wrong type of arguments passed in). You would use this to prevent specific inputs from being passed in when the default code would dangerously let it pass through.

What new Ruby methods did you implement? What challenges and successes did you have in implenting them?
	The only new ruby methods used were ArgumentError.new and rand(), which were both straightforward to implement.

What is a Ruby class?
	A Ruby class is a first-class object that has a collection of methods and variables. These Ruby classes can generate instances of itself which all can operate independently and can be unique to each other.


Why would you use a Ruby class?
	A Ruby class is useful for packaging specific methods in one object, as well as specific variables that are useful for that class. You can even make classes that share variables among each other and use that to communicate information.


What is the difference between a local variable and an instance variable?
	A local variable is a variable that is only available for us in the function it is defined in. An instance variable is a set of variables unique to an instance of a class, where no other instance can directly access those instance variables without accessor methods.

Where can an instance variable be used?
	An instance variable can only be used in the instance it was defined in.

=end