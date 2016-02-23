# PezDispenser Class from User Stories

# I worked on this challenge by myself.
# I spent .5 hours on this challenge.


# 1. Review the following user stories:
# - As a Pez user, I'd like to be able to "create" a new Pez dispenser with a group of flavors that
#      represent Pez so it's easy to start with a full Pez dispenser.
# - As a Pez user, I'd like to be able to easily count the number of Pez remaining in a dispenser
#      so I can know how many are left.
# - As a Pez user, I'd like to be able to take a Pez from the dispenser so I can eat it.
# - As a Pez user, I'd like to be able to add a Pez to the dispenser so I can save a flavor for later.
# - As a Pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order
#      of the flavors coming up.


# Pseudocode
=begin
DEFINE a class PezDispenser
  DEF METHOD Initialize
    ARGUMENTS: ARRAY flavors
    BODY:
      Set an instance variable 'clip' to the 'flavors' input
  END

  DEF METHOD pez_count
    ARGUMENTS: None
    BODY:
      Return the length of the 'clip' variable.

  DEF METHOD see_all_pez
    ARGUMENTS: None
    BODY:
      For each flavor in 'clip', print to console.
  END

  DEF METHOD add_pez
    ARGUMENTS: 'string' representing added flavor
    BODY:
      Push the 'string' to 'clip'
  END

  DEF METHOD get_pez
    ARGUMENTS: None
    BODY:
      Pop a flavor from 'clip' and return it.
  END
END




=end
# Initial Solution

class PezDispenser
  def initialize(flavors)
    @clip = flavors
  end
  
  def pez_count
    @clip.length
  end
  
  def see_all_pez
    @clip
  end
  
  def add_pez(flavor)
    @clip.push(flavor)
  end
  
  def get_pez
    return @clip.pop
  end
end



# Refactored Solution
=begin
Not much to refactor!
=end





# DRIVER TESTS GO BELOW THIS LINE

flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
super_mario = PezDispenser.new(flavors)
puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"
puts "Here's a look inside the dispenser:"
puts super_mario.see_all_pez
puts "Adding a banana pez."
super_mario.add_pez("banana")
puts "Now you have #{super_mario.pez_count} pez!"
puts "Oh, you want one do you?"
puts "The pez flavor you got is: #{super_mario.get_pez}"
puts "Now you have #{super_mario.pez_count} pez!"




# Reflection
=begin
What concepts did you review in this challenge?
  Classes and how to work with instance variables.
What is still confusing to you about Ruby?
  Nothing muh really for this challenge--straightforward!
What are you going to study to get more prepared for Phase 1?
  Just more Ruby! It's a feature rich language!
=end

