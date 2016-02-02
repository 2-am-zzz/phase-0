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