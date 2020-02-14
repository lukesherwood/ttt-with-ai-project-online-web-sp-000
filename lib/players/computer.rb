require 'pry'
module Players
  
class Players::Computer < Player
#ruby bin/tictactoe.rb  
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5],  # Middle row
  [6,7,8], # Bottom row
  [0,3,6], #left column
  [1,4,7], # middle column
  [2,5,8], #right column
  [0,4,8], #diagonal 1
  [2,4,6] #diagonal 2
  ]
  def move(board)
   #center position
  
    if !board.taken?("5")
    "5"
    else
      
    computer_move(board)
    end
  end

  def computer_move(board)
    win_move(board) || block(board) || corner(board) || middle_corner(board)
  end

  def middle_corner(board)
    middle_corners = [2, 4, 6, 8]
    middle_corners.find{|n| !board.taken?(n)}
  end

  def corner(board)
    corners =  [1, 3, 7, 9]
    corners.find{|n| !board.taken?(n)}
  end

  def block(board)
   
  end
  
   def other_symbol
    case symbol
    when 'X' then 'O'
    else 'X'
    end
  end

 def win_move(board)
    winning_row = WIN_COMBINATIONS.find do |combo|
      (board.cells[combo[0]] == token && board.cells[combo[1]] == token && board.cells[combo[2]] == " ") || (board.cells[combo[2]] == token && board.cells[combo[1]] == token && board.cells[combo[0]] == " ") || (board.cells[combo[0]] == token && board.cells[combo[2]] == token && board.cells[combo[1]] == " ")
    end
    if winning_row != nil
      winning_cell = winning_row.find {|cell| board.cells[cell] == " "}
    end
  end
  
end
end