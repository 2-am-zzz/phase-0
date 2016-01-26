# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # Initialize the hash with default quantity 0
  # Convert the input into an iterable array
  # FOR each item in said array, call the method to add an item to the list, with argument of item
  # print the list to the console using the method to print a list
  # Return the hash
# output: hash with key = product, value = quantity
def create_shopping_list(items=[])
  list = Hash.new(0)
  if items == []
    return list
  end
  new_items = items.split(" ")
  new_items.each do |key|
    list[key] = 0
  end
  p list
end



# Method to add an item to a list
# input: shopping list, item name, and optional quantity
# steps:
  # Check if the item is on the list
  # IF it is not on the list
    # Add the item to the hash as a key with a value of 0 or the optional quantity
  # ELSE if it is on the list
    # Update the quantity by adding the old and new quantities together.
  # Return the hash
# output: hash of the updated shopping list

def add_to_shopping_list(list,item,quantity=0)
  if list.include?(item)
    list[item] += quantity
  else
    list[item] = quantity
  end
  list
end

# add_to_shopping_list(new_list, "taco", 5)

# Method to remove an item from the list
# input: shopping list, item to remove
# steps:
  # Check if the item exists
  # IF the item exists on the list
    # Remove the item:value pair from the list
  # ELSE 
    # Return an error message.
  # Return the hash
# output: shopping list

def remove_from_shopping_list(list,item)
  if list.include?(item)
    list.delete(item)
  else
    puts "The item mentioned is not on this list"
  end
  list
end

# Method to update the quantity of an item
# input: shopping list, item, quantity
# steps:
  # Check if the item exists
  # IF the item exists on the list
    # Update the quantity of that item with the quantity passed in
  # ELSE
    # Return an error message.
  # Return the hash
# output: shopping list

def update_shopping_list(list,item,quantity)
  if list.include?(item)
    list[item] = quantity
  else
    puts "The item mentioned is not on this list"
  end
  list
end

# Method to print a list and make it look pretty
# input: shopping list
# steps:
  # puts a header of "SHOPPING LIST" to the console
  # FOR each item on the shopping list
    # Print the item, then its quantity, separate it with a colon
# output: Multiple lines outputted to console, each line has an item and its quantity

def print_shopping_list(list)
  puts "Shopping List".center(50)
  puts
  list.each do |key, value|
    print key.ljust(25)
    puts value.to_s.rjust(25)
  end
end

new_list = create_shopping_list()
new_list = add_to_shopping_list(new_list,'lemonade',2)
new_list = add_to_shopping_list(new_list,'tomatoes',3)
new_list = add_to_shopping_list(new_list,'onions', 1)
new_list = add_to_shopping_list(new_list,'ice cream',4)
new_list = remove_from_shopping_list(new_list,'lemonade')
new_list = update_shopping_list(new_list,'ice cream',1)
print_shopping_list(new_list)


=begin
What did you learn about pseudocode from working on this challenge?
  I learned that writing pseudocode shouldn't be a stressful task in terms of syntax. Whatever flows well in expressing your idea works. Having to adhere to these 'donts' is a blockade to actually imagining the code.
What are the tradeoffs of using Arrays and Hashes for this challenge?
  Using arrays would be simpler in creation, but hard in manipulation and pairing data together. Hashes are a bit more troublesome to make, but its organizational structure makes it the great choice in the long run.
What does a method return?
  A method returns the last expression it evaluated. This can either be an explicit return statement or an implicit last expression if a return statement is not reached.
What kind of things can you pass into methods as arguments?
  You can pass anything as an argument. Variables, integers, strings, other methods!
How can you pass information between methods?
  Passing information between methods can occur by sending it through the method's arguments. Ideally we could use a class to share data through an instance, but we're not at that level yet.
What concepts were solidified in this challenge, and what concepts are still confusing?
  Why are we using this methodology for the GPS? It made it clear that classes in this case would make life a whole lot easier, or knowing how to create your own dot methods. However, I solidified my knowledge of string formatting as well as the art of ternary operators!
=end