def turn(board)
  puts "Please enter 1-9:"
  
  input_index = gets.strip
  index = input_to_index(input_index)

   index.between?(0,8)
  move(board,index)
  display_board(board)
  
  until !index.between?(0,8)
  puts "Please enter a valid input"
end
end

def move(board, index, charac = "X")
   board[index] = charac
 end

def input_to_index(user_input)
  index = user_input.to_i - 1
  return index
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board,index)
  
  if index.between?(0,8) && position_taken?(board,index)
    return false
  else if index.between?(0,8) && !position_taken?(board,index)
    return true
  else if !index.between?(0,8)
    return false
  end
end
end
end

def position_taken?(board,index)
    
if board[index] == " " || board[index] == "" || board[index] == nil
  return false
else if board[index] == "X" || board[index] == "O"
  return true
end
end
end