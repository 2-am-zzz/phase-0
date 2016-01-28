# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# # Person 1's solution
# def my_array_finding_method(source, thing_to_find)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_finding_method(source, thing_to_find)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# # Identify and describe the Ruby method(s) you implemented.
# #
# #
# #

# # Person 2
# def my_array_modification_method!(source, thing_to_modify)
#   source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_modification_method!(source, thing_to_modify)
#   source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# # Identify and describe the Ruby method(s) you implemented.
# #
# #
# #


# # Person 3
# def my_array_sorting_method(source)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_sorting_method(source)
#    source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# # Identify and describe the Ruby method(s) you implemented.
# #
# #
# #


# # Person 4
# def my_array_deletion_method!(source, thing_to_delete)
#   source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_deletion_method!(source, thing_to_delete)
#   source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# # Identify and describe the Ruby method(s) you implemented.
# #
# #
# #


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