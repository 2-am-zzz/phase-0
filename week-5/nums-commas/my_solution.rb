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

def separate_comma(num)
  string = num.to_s
  length = string.length
  if string.length < 4
    return string
  end
  newstring = ''
  count = length % 3
  if count == 0
    newstring.concat(string[0..2])
    count = 3
  else
    newstring.concat(string[0..(count-1)])
  end
  upcount = count
  while upcount < length
    if (upcount-count) % 3 == 0
      newstring.concat(',')
    end
    newstring.concat(string[upcount])
    upcount += 1
  end
  return newstring
end


# 2. Refactored Solution




# 3. Reflection