/* User Stories

I want a class called ShoppingList that can create a new list when first
instantiated.

I want a method inside ShoppingList that can add an item to my shopping list
from an argument I pass in.

I want a method inside ShoppingList that can removve an item from my shopping
list from an argument I pass in.

I want a method inside ShoppingList that can update certain quantities on my
shopping list with two arguments I pass in--a quantity and an item.

I want a method inside ShoppingList that can print out the list to the console.

*/

/* Pseudocode

Create a new constructor function called ShoppingList that takes in a list of
items.
Inside the construtor function:
  Create a new list as an empty object called 'list'.
  FOR each item inside the input list:
    Add these items as attributes to 'list' with a value of 0.
  END

  Define a new method attribute, add_to_shopping list, that takes in an item
  and a quantity
    IF the item exists in the list:
      Add the input quantity to the current quantity of the item.
    ELSE:
      Add a new attribute to list with name 'item' and 'value' input
      quantity.
    END
  END

  Define a new method remove_from_shopping_list that takes in an item and
  a quantity
    IF the item is on the list:
      Delete the item from the list
    ELSE:
      Print to console an error.
    END
  END

  Define a new method update_shopping_list that takes in an item and a
  quantity
    IF the item is on the list:
      Replace the quantity in the list with the new quantity.
    ELSE
      Print to console an error.
    END
  END

  Define a new method print_shopping_list that takes no arguments.
    Print out each item and their quantity to console.
  END
END

*/

/* Initial Solution */

// function ShoppingList(list) {
//   this.list = {};
//   for (var i = 0; i < list.length; i++) {
//     this.list[list[i]] = 0;
//   };
  
//   this.add_to_shopping_list = function(item, quantity) {
//     if (this.list.hasOwnProperty(item)) {
//       this.list[item] += quantity;
//     } else {
//       this.list[item] = quantity;
//     };
//   };
  
//   this.remove_from_shopping_list = function(item) {
//     delete this.list[item];
//   };
  
//   this.update_shopping_list = function(item, quantity) {
//     if (this.list.hasOwnProperty(item)) {
//       this.list[item] = quantity;
//     };
//   };
  
//   this.print_shopping_list = function() {
//     console.log("Shopping List")
//     console.log("-------------")
//     for (var item in this.list) {
//       console.log(this.list[item] + " " + item);
//     };
//   };
// }

/* Refactored Solution */

function ShoppingList(list) {
  this.list = {};
  for (var i = 0; i < list.length; i++) {
    this.list[list[i]] = 0;
  };
  
  this.add_to_shopping_list = function(item, quantity) {
    (this.list.hasOwnProperty(item)) ? this.list[item] += quantity : this.list[item] = quantity;
  };
  
  this.remove_from_shopping_list = function(item) {
    delete this.list[item];
  };
  
  this.update_shopping_list = function(item, quantity) {
    if (this.list.hasOwnProperty(item)) {
      this.list[item] = quantity;
    };
  };
  
  this.print_shopping_list = function() {
    console.log("Shopping List")
    console.log("-------------")
    for (var item in this.list) {
      console.log(this.list[item] + " " + item);
    };
  };
}


var alist = new ShoppingList(["eggs","bananas","milk"])
alist.add_to_shopping_list("cookies",2)
alist.remove_from_shopping_list("eggs")
alist.update_shopping_list("bananas",3)
alist.add_to_shopping_list("bananas",3)
alist.print_shopping_list()


/* Reflection 
What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)
  Constructor functions made more sense to me now. It's very similar to how classes work in Ruby.

What was the most difficult part of this challenge?
  The most difficult part was determining what built-in functions could be used as well as when to use parentheses. JS is very picky about parentheses.
Did an array or object make more sense to use and why?
  An object makes more sense, because it has a key:value system that can represent item:quantity.

*/