# p s e u d o c o d e 
# ask for input
# get input
# convert input to index
# if index is valid
#   make the move for index
#   show the board
# else
#   ask for input again until you get a valid input
# end

# take a turn
def turn(board) 
  puts "Please enter 1-9:"
  input = gets.strip
  # convert input to integer index
  def input_to_index(input)
    index = input.to_i - 1 
  end
  if !valid_move?(board, index)
    puts "I'm sorry - you entered an invalid move!"
    turn(board)
  end
end

# print out the current state of the board 
def display_board(board)
  puts "  #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts "  #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts "  #{board[6]} | #{board[7]} | #{board[8]} "
end

# is the user input a valid move?
def valid_move?(board, index)
  if !index.between?(0, 8) || !index.is_a?(Integer) || index == nil
    false
  else 
    !position_taken?(board, index)
  end
end

# has this position been taken?
def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    true 
  else
    false 
  end
end
  
# record the move with a default token of X
def move(board, index, token = "X")
  board[index] = token
end




