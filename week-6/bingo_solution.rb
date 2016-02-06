# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.

=begin
# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #fill in the outline here
  DEF method call
    Return a two-element array with:
      a letter randomly generated from B,I,N,G,O
      a number from 1-100
  END


# Check the called column for the number called.
  #fill in the outline here
  DEF method check with inputs of a LETTER and a NUMBER
    Convert the letter to an appropriate column number and store it in INDEX
    Iterate through the board's INDEXth column and check
      IF any number matches the NUMBER
        Print an affirmative message to the console
        modify this number by replacing it with an X
        print out the new board to the console
    Print a negative message to the console.

# If the number is in the column, replace with an 'x'
  DEF method replace_with_x, with input COLNUM and NUMBER
    Find the NUMBER in the COLNUM column of the board
    Replace it with an 'X'.

# Display a column to the console
  #fill in the outline here
  FOR each element in a column
    Print the number out and add spaces after it.

# Display the board to the console (prettily)
  Print out the string BINGO with spaces in between the letters
  print out each column using the display method above.
=end

# Initial Solution

# class BingoBoard

#   def initialize(board)
#     @bingo_board = board
#     @bingo_array = ['B','I','N','G','O']
#   end

#   def call
#     move = [@bingo_array.sample,rand(100)+1]
#     puts "The next call is: #{move[0]}#{move[1]}"
#     return move
#   end
  
#   def check(newcall)
#     letter = newcall[0]; number = newcall[1]
#     index = letter_to_col(letter)
    # for i in 0..4
    #   if @bingo_board[i][index] == number
    #     puts "#{letter}#{number} is on your board!\n\t"
    #     @bingo_board[i][index] = 'X'
    #     display
    #   end
    # end
#   end
  
#   def display
#     print_col(@bingo_array)
#     @bingo_board.each do |i|
#       print_col(i)
#     end
#     puts
#   end
  
#   private
  
#   def letter_to_col(letter)
#     @bingo_array.find_index(letter)
#   end
    
#   def replace_with_x(index,number)
#     index2 = @bingo_board[index].find_index(number)
#     @bingo_board[index][index2] = 'X'
#   end
    
#   def print_col(array)
#     string = ''
#     array.each do |i|
#       string << i.to_s.rjust(5)
#     end
#     string.rstrip
#     puts string
#   end

# end

# Refactored Solution

class BingoBoard

  def initialize(board=nil)
    @bingo_array = ['B','I','N','G','O']
    (board == nil) ? (@bingo_board = create_board) : (@bingo_board = board)
    puts 'INITIAL BOARD:'
    display
  end

  def call
    move = [@bingo_array.sample,rand(100)+1]
    puts "The next call is: #{move[0]}#{move[1]}"
    return move
  end
  
  def check(newcall)
    letter = newcall[0] 
    number = newcall[1]
    index = @bingo_array.find_index(letter)
    for i in 0..4
      if @bingo_board[i][index] == number
        puts "#{letter}#{number} is on your board!"
        @bingo_board[i][index] = 'X'
        display
      end
    end
  end
  
  def display
    print_col(@bingo_array)
    @bingo_board.each do |i|
      print_col(i)
    end
    puts
  end
  
  private
  
  def create_board
    board = Array.new(5) { Array.new() }
    check = {0=>[],1=>[],2=>[],3=>[],4=>[]}
    for i in 0..4
      for j in 0..4
        candidate = (rand(15)+1)+(i*15)
        while check[i].include?(candidate)
          candidate = (rand(15)+1)+(i*15)
        end
        board[j] << candidate
        check[i] << candidate
      end
    end
    board[2][2] = 'X'
    return board
  end
    
  def print_col(array)
    string = ''
    array.each do |i|
      string << i.to_s.rjust(5)
    end
    puts string.rstrip
  end

end


#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
# board = [[47, 44, 71, 8, 88],
#         [22, 69, 75, 65, 73],
#         [83, 85, 97, 89, 57],
#         [25, 31, 96, 68, 51],
#         [75, 70, 54, 80, 83]]

new_game = BingoBoard.new()
new_game.check(["N",32])
new_game.check(["N",31])
new_game.check(["B",15])
new_game.check(["B",1])
new_game.check(["I",19])
new_game.check(["G",50])
new_game.check(["O",65])
new_game.check(["I",22])
new_game.check(["G",55])


#Reflection
=begin
How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
  Pseudocoding was straightforward. I like where my style has gone, since it highlights important
  control flow and varibles while still maintaining a good conversational form.

What are the benefits of using a class for this challenge?
  Using a class means we can use instance variables, which allow us to store information in-between
  method calls. A class also means we can group our methods together under one object. We can also
  protect certain methods from being called outside of the class with the private keyword.

How can you access coordinates in a nested array?
  Accessing coordinates in a nested array is as simple as calling another index search, such as array[i][j].


What methods did you use to access and modify the array?
  Methods like #include? are useful for finding if elements exist in an array. #sample is a useful method
  for extracting a random element from an array. 


Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
  #find_index is a useful method for determining an index of an existing value, called by Array.find_index(object), which
  returns the first index where object is found.


How did you determine what should be an instance variable versus a local variable?
  Instance variables need to be used in other functions. Local variables only need to be used within
  the method they are declared in.

What do you feel is most improved in your refactored solution?
  Not much--a few variable compressions here. Honestly, I'm comfortable enough with knowing enough functions now that
  avoiding the built-ins seems tedious.


=end