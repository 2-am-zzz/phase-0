# Pad an Array

# I worked on this challenge [with: ]

# I spent [1] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode
# DEFINE method called pad! which takes three arguments, an array, an integer, and a value(string or integer)
#  IF the length of the array is less than the integer
#    SET an array with the value repeated the difference between array length and integer
#   COMBINE the two arrays and set equal to original
#  ELSE
#    return the original array
#END

# DEFINE method called pad which takes three arguments, an array, an ineger, and a value(string or integer)
# IF the length of the array is less than the integer
#   SET an array with the value repeated the difference between array length and integer
#   COMBINE the two arrays
#   RETURN the array
# ELSE
#   RETURN the original array


# 1. Initial Solution
# def pad!(array, min_size, value = nil) 
#   if array.length < min_size
#     difference = min_size - array.length
#     padding = [value]*difference
#     array.concat(padding)
#     return array
#   else
#     return array
#   end
# end



# def pad(array, min_size, value = nil) 
#     if array.length < min_size
#       diff = (min_size)-(array.length)
#       padding = [value]*diff
#       new_arr = array + padding
#     else
#       new_arr = Array.new(array)
#     end
#   return new_arr
# end


# 3. Refactored Solution
def pad!(array, min_size, value = nil) 
  if array.length < min_size
    array.concat([value]*(min_size - array.length))
  end
  return array
end

def pad(array, min_size, value = nil)
    if array.length < min_size
      diff = (min_size)-(array.length)
      new_arr = array + [value]*diff
    else
      new_arr = Array.new(array)
    end
  return new_arr
end


# 4. Reflection
=begin

Were you successful in breaking the problem down into small steps?
  Yes, most of our pseudocode was written fairly straightforward. The logic itself was well-structured--it just was when it came to actual implementation that we began to see issues arise.

Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
  95% of the implementation was straightforward, but we ran into some issues. Due to a space before one of our comments, we ended up looking for a bug that was hard to detect, since the error message did not help at all. After we fixed that, it was hard to determine what exactly was causing specific errors, even though our code was technically correct in its output. Discovering what the scope of Ruby was and the nature of return statements was a long and tough task and made us realize that we really need to have class structures.


Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
  No, please see above. Creating destructive methods is not straightforward and taught us a hard lesson in Ruby scope and that variables can be affected even if they are outside of a method and vice versa. Eventually, trial and error was our strategy since we were not really versed in Ruby scope.


When you refactored, did you find any existing methods in Ruby to clean up your code?
  Not particularly. We found our code to be simple already--we just needed to eliminate some intermediate variables.


How readable is your solution? Did you and your pair choose descriptive variable names?
  We think it's readable, especially our non-refactored solutions. All of our variable names are descriptive. What else do you want us to say? :)


What is the difference between destructive and non-destructive methods in your own words?
  If you can execute a method without having to worry about the original input changing, it's non-destructive. Else, it's destructive.

=end