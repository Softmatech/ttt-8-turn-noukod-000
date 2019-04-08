
def turn(board)
  puts "Please enter 1-9:"
  
  input_index = gets.strip
  index = input_index.to_i
  index_ = index - 1
  
  if index.between?(0,8)
  move(board,index_)
else
  until !index.between?(0,8)
  puts "Please enter a valid input"
end
end
end

def move(board, index, charac = "X")
   board[index] = charac
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
