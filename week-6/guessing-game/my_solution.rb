# Build a simple guessing game


# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# Pseudocode

=begin

GuessingGame#initialize
# Input: An integer
# Output: An instance of the object GuessingGame
# Steps: Set @answer to be the input integer and set @solved to be false.

GuessingGame#guess
# Input: An integer, called 'attempt'
# Output: A symbol indicating whether the guessed number is higher than, lower than, or the actual @answer.
# Steps:
	IF attempt is greater than @answer
		Return :high
	ELSIF attempt is less than @answer
		Return :low
	ELSE
		Set @solved to equal true
		Return :correct
	END

GuessingGame#solved?
# Input: None
# Output: boolean indicating if the number has been guessed correctly.
# Steps: Return @solved



=end

# Initial Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
    @solved = false
  end

  def guess(attempt)
  	if attempt > @answer
      @solved = false
  		:high
  	elsif attempt < @answer
      @solved = false
  		:low
  	else
  		@solved = true
  		:correct
  	end
  end

  def solved?
  	@solved
  end
end

# Refactored Solution

# I concluded that the above code is already at its best potential.
# Using ternary operators would just make the code harder to read.
# We don't need any enumerables and I assume this was copied over
# from another assignment. All symbols and variables are properly named
# and Ruby convention style guidelines were upheld. I swear if I get a 1
# on my refactoring part, I am going to flip a table! (╯°□°）╯︵ ┻━┻)


# Reflection

=begin

How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
  Methods are what you can do with an object. So for example, for a fridge
  class, you can open a fridge, you can put stuff in a fridge, and you can
  even unplug it! These are all reflective of what methods do--interact with
  an object. Keep in mind this is about instance methods, as class methods
  are a whole other entity. Instance variables are like the properties of that
  specific instance. A fridge can be white, metal, cold, be full of stuff, 
  completely empty, or unpowered. These can all be described in terms of
  instance variables that are unique to that instance.

When should you use instance variables? What do they do for you?
  Instance variables are useful for containing information for the specific
  instance of a class. We may have several Car objects, but each car could
  have an instance color of their own, like red, black, white, etc. 
  Use instance variables when you need to keep track of state between method
  calls within the same instance of an object.

Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
  No problems with flow control here. It's a straightforward check of two of
  three conditions. Also, reading the spec is important because solved? does
  not necessarily mean permanent solving.

Why do you think this code requires you to return symbols? What are the benefits of using symbols?
  This code requires us to use symbols because they are immutable strings
  that allow us to reliably return these without worrying that they could
  be modified. The benefits of using symbols is that they cannot be changed,
  alongside them not taking extra memory when called multiple times.

=end