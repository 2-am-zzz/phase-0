# Calculate the mode Pairing Challenge

# I worked on this challenge with FJ Collins

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? An array of either numbers (floats or integers) or strings
# What is the output? the most occuring element(s) from the input array in an array
# What are the steps needed to solve the problem?
# Create a new hash counter_hash
# FOR each element in the array
  # IF the element already exists in counter_hash
    # Increment that value by 1
  # ELSE
    # Add the element to the hash with a value of 1
# Initialize a variable frequency and set it to 0
# Initialize a variable word_array and set it to ['']
# FOR each key-value pair in counter_hash
  # Check if the value is greater than frequency
  # IF it is
    # Set frequency to value
    # Set word_array to the [key]
  # ELSE if value is equal to frequency
    # Add value to array word
# Return word

# 1. Initial Solution
# def mode(array)
#   counter_hash = Hash.new
#   array.each do |element|
#     if counter_hash.include?(element)
#       counter_hash[element] += 1
#     else 
#       counter_hash[element] = 1
#     end
#   end
#   frequency = 0
#   word_array = []
#   counter_hash.each do |key, value|
#     if value > frequency
#       frequency = value
#       word_array = [key]
#     elsif value == frequency
#       word_array += [key]
#     end
#   end
#   return word_array
# end



# 3. Refactored Solution

def mode(array)
  counter_hash = Hash.new
  array.each do |element|
    if counter_hash.include?(element)
      counter_hash[element] += 1
    else 
      counter_hash[element] = 1
    end
  end
  max = counter_hash.values.max
  new_hash = Hash[counter_hash.select {|key,value| value == max}]
  new_hash.keys
end


# 4. Reflection
=begin
Which data structure did you and your pair decide to implement and why?
	We decided to implement a hash since having the key as a number/string and the value representing its number of occurrences seems to be the most straightforward solution. Pairing data is great in this case.

Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? 
	It was more or less the same--strong pseudocode means an easier-to-implement solution. We did catch some cases that we didn't catch the first run, but they were fixed before we reached that point in the initial solution.


What issues/successes did you run into when translating your pseudocode to code?
	None too significant, just some issues with keeping track of the variables. The refactoring was the challenging part, since we were looking for any methods that would simplifying our iterations.


What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
	This was the more challenging part, because figuring out the behavio of enumarators in hashes is not as straightforward as using them in arrays. We ended up using mainly .each and .select, with .each being the most straightforward enumeration method and .select allowing us to select the key-value with the highest count.
=end