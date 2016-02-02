# Your Names
# 1) Kevin Serrano
# 2) Connor Reaumond

# We spent 1.5 hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, num_of_ingredients)
  #Set key/value of ingredients and number of ingredients
  #Set error counter to 3
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}

  raise ArgumentError, "#{item_to_make} is not a valid input" unless library.has_key?(item_to_make)
    
  #Setting serving size equal to library num_of_ingredients
  #Setting remaining ingredients to remander of number num_of_ingredients/serving_size
  # serving_size = library.values_at(item_to_make)[0]
  serving_size = library[item_to_make]
  remaining_ingredients = num_of_ingredients % serving_size
  servings = num_of_ingredients / serving_size
  
  
  #Check remaining_ingredients value
  #When 0 output num_of_ingredients/ serving_size and add item name
  #Else output num_of_ingredients / serving_size, add item name, and remaining ingredients
  statement = "Calculations complete: you can make #{servings} #{item_to_make}(s)"
  
  if remaining_ingredients > 0
    return statement + ", you have #{remaining_ingredients} leftover ingredients. Consider baking a " + library.select{|k,v| v <= remaining_ingredients}.keys.sample + "!"
  else
    return statement
  end
end


#h.select {|k,v| k > "a"}

p serving_size_calc("pie", 13)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
# p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection

=begin
  
What did you learn about making code readable by working on this challenge?
  Some people can really hack at code making it almost unreadable!
  That's when good refactoring comes in--saving the day by making code
  readable again. If your code doesn't translate into something easily
  written by pseudocode, then you're most likely doing something wrong.
  I got so mad at this code you don't even know. 

Did you learn any new methods? What did you learn about them?
  Plenty! I learned about .sample which is a random sampling method, the
  binding.pry method which is a breakpoint method for walking through your code! Awesome! Finally, the fact that we can use conditional operators
  at the end of our code blocks is going to help with refactoring.

What did you learn about accessing data in hashes? 
  You can't just pass in the [key,value] pair and hope it functions as a key.
  Please. The fact that the developer worked around this with a hack just
  makes me feel sad.

What concepts were solidified when working through this challenge?
  Concepts that were solidified were the importance of refactoring and how hard it can be to read other people's code if they were in a hurry.

=end