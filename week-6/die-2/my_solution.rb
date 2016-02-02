# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode
=begin

Initialize
  Input: Array of strings
  Output: Die Object
  Steps:
    IF the input array's length is equal to 0
      Raise an Argument Error indicating input cannot be an empty array
    ELSE
      Set the variable @sides to be equal to the length of the input array
      Set the variable @labels to be equal to the input array itself
    END

Sides
  Input: None
  Output: Integer
  Steps:
    RETURN the variable @sides

Roll
  Input: None
  Output: A string
  Steps:
    Select a random number from 0 to @sides - 1
    Use that number to select a string from the array @labels using index notation
    RETURN the selected string.

=end
# Initial Solution

# class Die
#   def initialize(labels)
#     (labels.length == 0) ? (raise ArgumentError.new("Cannot input an empty array.")) : (@sides = labels.length; @labels = labels)
#   end

#   def sides
#     @sides
#   end

#   def roll
#     return @labels[rand(0..@sides-1)]
#   end
# end



# Refactored Solution

class Die

  def initialize(labels)
    if labels.length == 0 
      raise ArgumentError.new("Cannot input an empty array.")
    else
      @sides = labels.length
      @labels = labels
    end
  end

  attr_reader :sides

  def roll
    return @labels.sample
  end
end






# Reflection

=begin

What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
  Not much of the logic had to be changed really. Other than making @sides
  dependent on length and storing an extra variable, the implementation was
  straightforward now that we know about classes.

What does this exercise teach you about making code that is easily changeable or modifiable? 
  Cleanly written code is easy to expand on. If everything already works and
  is readable, then it is easily modified and extendable, especially if we 
  can test the module in discrete parts.


What new methods did you learn when working on this challenge, if any?
  None really. I recently learned about .sample this week and got to use it
  here, which is a really useful method for random sampling of items from 
  an array or hash, but other than that, everything here was straight.

What concepts about classes were you able to solidify in this challenge?
  Nothing really. Only that classes make method organization a whole lot
  easier and it all makes sense!

=end