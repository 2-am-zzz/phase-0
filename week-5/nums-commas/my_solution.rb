# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? A positive integer
# What is the output? A string representing a comma'd integer
# What are the steps needed to solve the problem?
=begin
DEF separate_comma(integer)
	convert integer into a string
	store this conversion in variable "string"
	Check the string's length
	IF less than 4
		return the variable "string"
	ELSE
		Create a new string "newstring"
		Set a variable "count" to result of string's length modulus 3
		concat to "newstring" the elements of "string" at indices 0..count-1
		WHILE count is less than string.length
			IF count modulus 3 is equal to 1
				concat to "newstring" a ","
			concat to "newstring" the element in "string" at index "count"
			increment count by 1
	RETURN "newstring"
END

=end


# 1. Initial Solution

# def separate_comma(num)
#   string = num.to_s
#   length = string.length
#   if string.length < 4
#     return string
#   end
#   newstring = ''
#   count = length % 3
#   if count == 0
#     newstring.concat(string[0..2])
#     count = 3
#   else
#     newstring.concat(string[0..(count-1)])
#   end
#   upcount = count
#   while upcount < length
#     if (upcount-count) % 3 == 0
#       newstring.concat(',')
#     end
#     newstring.concat(string[upcount])
#     upcount += 1
#   end
#   return newstring
# end


# 2. Refactored Solution

def separate_comma(number)
  inputarr = number.to_s.reverse.split("")
  count = 0
  output = ""
  while not inputarr.empty?
    output.concat(inputarr.shift)
    if count % 3 == 2 and not inputarr.empty?
      output.concat(",")
    end
    count += 1
  end
  output.reverse!
end


# 3. Reflection
=begin

What was your process for breaking the problem down? What different approaches did you consider?
	At first, my process for breaking the problem down is as follows:
		How do I convert the input into something I can iterate through?
		After that, how do I determine how I'm going to create the new input? Use the original number? Or create a new one?
		After that, how will I determine the placement of the commas. What are the edge cases?

	It wasn't until I ended up overhearing a hint (sorry about solo) about reversing the array that I realize that I wouldn't have to account for the head of the solution.

Was your pseudocode effective in helping you build a successful initial solution?
	Yes. It helped me visualize the overall code structure. I was still tempted to think details, but it helped me see the big picture.


What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
	Not really. Although we have changed the way we iterated through with an explicit pop and push, we are still basically moving through an array. The real insight came from the reversal of the array, which allowed us to not have to do pre-work on the array (such as accounting for the numbers before the first comma) as well as eliminate the edge cases of checking for numbers less than 1000. 


How did you initially iterate through the data structure?
	As I said above, the initial solution was to use indexes to iterate. The refactored solution uses a pop and push like solution.

Do you feel your refactored solution is more readable than your initial solution? Why?
	Although the refactored solution may be a bit harder to understand, ultimately it's more readable due to its fairly simple implementation and straightforward methods.

=end