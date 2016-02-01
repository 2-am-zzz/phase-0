# Research Methods

# I spent 1 hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
=begin
--pseudocode--
input: an array of strings and a letter to find
output: an array of all strings with input letter
steps:
create container for the output
for each element in the input array IF it contains thing_to_find
add it to the container 
END IF  
=end

def my_array_finding_method(source, thing_to_find)
  found = []

  source.each { |idx|
    if idx.to_s.include? thing_to_find
      found << idx
    end
  }

  found
end

=begin
--pseudocode--
input: a hash and a number to find
output: an array of the keys that have the value to find
steps:
create an empty container to hold the pet names
for each key value pair
  IF the value is what we are trying to find
    store the key in the container
  END IF
=end
def my_hash_finding_method(source, thing_to_find)
  pets = []

  source.each {  |key, val|
    if val == thing_to_find
      pets << key
    end
  }

  pets
end

# Identify and describe the Ruby method(s) you implemented.
# include? : this returns a boolean value. True if the string contains the given string or character and false if it does not
# << appends the object following it to whatever it is pointing at. If it is pointing to a string it will append it to the end of the string.
#       if it is appending to an array it will be a new element
# Hash.each calls the code block for each key value pair passing the key and value as parameters 

# Person 2
# Pseudocode:
# -input: array and an integer to be added into the area
# -output: new area, overwriting old array, with new number of pets desired
# -steps
#   -define a method with two arguments (string, integer)
#   -insert the integer in correct location in string.
#   -return the new array with passed in integer
  
def my_array_modification_method!(source, num_of_pets_wanted)
  source.map! do |x|
    if x.is_a?(Integer)
      x + num_of_pets_wanted
    else
      x
    end
  end
  return source
end


# Pseudocode:
# -input: hash and an integer to be added into current value
# -output: overwritten hash with new value for corresponding key
#   -define a destructive method to modify hash values
#   -over each key pair values in hash combine new age value added to old value
#   -return the new hash with passed in values
  
def my_hash_modification_method!(source, years_to_add)
  source.each do |name, old_age|
    source[name] = old_age + years_to_add
  end
  return source
end

# Identify and describe the Ruby method(s) you implemented.
# -used .is_a?(Integer) -> this will go through each element in the array and decide if it is an Integer (true or false). If it is true, then it will apply the code block to that element.
# -used .each over a hash to modify the age of pets. Starts by looking at each key and then modifying the corresponding value, old_age, by adding years_to_add.


# Person 3
def my_array_sorting_method(source)
  # sort by converting the integers, if there are, into strings for the purpose of sorting only
  return source.sort {|a,b| a.to_s <=> b.to_s }
end
print my_array_sorting_method(i_want_pets)

def my_hash_sorting_method(source)
   # sort the array by pet's age
   source.sort_by {|n,a| a}
end
print my_hash_sorting_method(my_family_pets_ages)

# Identify and describe the Ruby method(s) you implemented.
# the sort method by default first put the integers in increasing order, than the strings starting with a capital letter in alphabetical order, the other strings
#the sort_by is more specific wgich is needed for a hash considering we have a key/value pair
#We can use the sort_by for array too and it is more perfomant than the sort  . so more adapted for larger arrays.
# I tested my method with irb 
# the rspec is working


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.reject! {|s| s.to_s.include?(thing_to_delete.to_s) }
end

puts my_array_deletion_method!(i_want_pets,"0")

def my_hash_deletion_method!(source, thing_to_delete)
  source.reject! {|n,a| n == thing_to_delete }
end
puts my_hash_deletion_method!(my_family_pets_ages,"George")


# Identify and describe the Ruby method(s) you implemented.
# Used the reject method combined with include
#Used the same reject method with include and made it simpler because we nom it will be a specific name
#I test all my methods with irb


# Person 5
def my_array_splitting_method(source)
  new_arr = Array.new(2)
  new_arr[0] = source.select {|item| item.is_a?(Integer) }
  new_arr[1] = source.reject {|item| item.is_a?(Integer)}
  return new_arr
end

# INPUT: An array of objects
# OUTPUT: An array with two elements
#   The first element is an array containing all the integers from the input
#   The second element is an array containing all the non-integers.
#
# An explanation of the primary methods used:
#   Calling Array.new(x) will return an array of length x populated with nil
#   values.
#
#   .select can be called on an array in the form
#     array.select { |item| block }
#   Where item is the variable name you want to have assigned the current value
#   being looked at, and block is a code block that returns a boolean.
#   For .select, it iterates through the array and returns, in an array, all
#   items from the original array that met a true condition in the block.
#   
#  Conversely, .reject works the same way, except it returns all the elements
#  that return false in the block.
#
#  In the example above, for each |item| in array, the .select and .reject
#  methods are checking if the item is of a type Integer, which is seen in
#  the code item.is_a?(Integer). 


def my_hash_splitting_method(source, age)
  new_arr = Array.new(2)
  new_arr[0] = source.select {|key,value| value <= 4 }.to_a
  new_arr[1] = source.reject {|key,value| value <= 4 }.to_a
  return new_arr
end

# INPUT: A hash with key-value pairs of type String-Integer
# OUTPUT: An array with two elements
#   The first element is an array of arrays, where each array is of the form
#   name-age, and all arrays here contain elements where the key was <= 4.
#   The second element is an array of arrays containing everything else.
#
# An explanation of the methods used can be seen above in 
# my_array_splitting_method. The only addition is the to_a method, which
# converts objects into arrays where key => value is converted to [key,value]


# There isn't a special trick to reading the documentation, since it's mostly
# a matter of understanding where everything is. The start of every search
# should always be to google for "ruby [class]" which is the class of object
# you're trying to manipulate. After reaching the ruby docs, the list of
# methods can be seen on the left-hand side under "Methods". It is important
# to read and see what the return value of each statement is on the right-side
# of the arrow within each function title. Multiple repetitions of each method
# means there are multiple ways of calling this function. After that, you just
# have to read the description, look at the examples, and test out the methods
# in an interpreter.


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
# In terms of technical stuff, not much. I did get to practice using .select
# and .reject, so that was fun! However, from all the practice of all the other
# challenges, I know how to navigate through the docs fairly well. I guess that
# explaining these methods to others deepens my understanding of the function,
# but I hope we get to explain more complex functions in the future so that
# we have to be very selective about what we type.