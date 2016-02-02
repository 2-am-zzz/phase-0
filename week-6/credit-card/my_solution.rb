# Class Warfare, Validate a Credit Card Number


# I worked on this challenge with Alivia Blount.
# I spent 1.25 hours on this challenge.

# Pseudocode

# Initialize Method (class)
# Input: 16 digit number (no spaces) integer type no float
# Output: return object
# Steps: check if input is 16 digits long
  #IF valid then initialize
  # => store the number in a class variable @number
  #ELSE ask for a valid input

# check_card method
# Input: nil
# Output: boolean true of false if valid card #
# Steps: Convert from integer to string
  # String.split('') returns an array of string values
  # Map! block to iterate through array for s -> i
  # Convert string to_i as needed
  # Iterate through array from second to last digit double every other      digit until you reach the first digit.
    # IF a number greater then 9?
      # Set array element to number % 10 + 1
    # ELSE set array element to number
  # Sum all the array elements together
  # IF the sum is a multiple of ten: return true
  # ELSE: return false

# 12345 (integer)

# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits



# class CreditCard
#   def initialize(number)
#     unless number.to_s.length == 16
#       raise ArgumentError.new("The input has to be 16 digits long!")
#     end
#     @number = number
#   end
  
#   def check_card
#     ccnumber = @number.to_s.split('')
#     ccnumber.map! do |num|
#       num.to_i
#     end
#     ccnumber = doubling(ccnumber)
#     final = ccnumber.reduce(:+)
#     if final % 10 == 0
#       return true
#     else
#       return false
#     end
    
#   end
  
#   def doubling(array)
#     iter = -2 # 0
#     while iter >= -16 # 14
#       double = array[iter] * 2
#       if double > 9
#         double = (double % 10) + 1
#       end
#       array[iter] = double
#       iter -= 2 # +=
#     end
#     return array
#   end
  
# end


# Refactored Solution

class CreditCard
  def initialize(number)
    unless number.to_s.length == 16
      raise ArgumentError.new("The input has to be 16 digits long!")
    end
    @number = number
  end
  
  def check_card
    ccnumber = @number.to_s.split('')
    ccnumber.map! do |num|
      num.to_i
    end
    doubling(ccnumber).reduce(:+) % 10 == 0 ? true : false
  end
  
  private

  def doubling(array)
    iter = 0 
    for i in (0..14).step(2)
      array[i] *= 2
      if array[i] > 9
        array[i] = (array[i] % 10) + 1
      end
    end
    return array
  end
  
end
# Reflection

=begin

What was the most difficult part of this challenge for you and your pair?
  The pseudocode for sure. We wanted to be detailed in our implementation before starting any coding and we had to use a lot of irb to determine what we needed to do in terms of conversions.

What new methods did you find to help you when you refactored?
  .step for ranges is very useful. It allows you to output every-other number or every third number and above! This is useful for sampling only a subset of indexes.

What concepts or learnings were you able to solidify in this challenge?
  Pseudocode is important. Super important. Also, making helper functions enhances code readability greatly, and we can protect against those helper functions being accessed outside of the class by placing it in private.

=end