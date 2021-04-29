class Board
require 'pry'
attr_accessor :board

  @@board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

  def initialize

  end

  def self.display_board(the_board)
    puts ("  #{the_board[0]} | #{the_board[1]}  | #{the_board[2]}  ").center(150)
    puts ("-----------").center(150)
    puts ("  #{the_board[3]} | #{the_board[4]}  | #{the_board[5]}  ").center(150)
    puts ("-----------").center(150)
    puts ("  #{the_board[6]} | #{the_board[7]}  | #{the_board[8]}  ").center(150)
    end
    
    display_board(@@board)

   

  def add_symbol(player_turn, board)
    if player_turn == "A1"
    @@board.delete(0)
    @@board.insert(0,'X')
    elsif player_turn == "A2"
      @@board.delete(1)
      @@board.insert(1,'X')
    elsif player_turn == "A3"
      @@board.delete(2)
      @@board.insert(2,'X')
    elsif player_turn == "B1"
      @@board.delete(3)
      @@board.insert(3,'X')
    elsif player_turn == "B2"
      @@board.delete(4)
      @@board.insert(4,'X')
    elsif player_turn == "B3"
      @@board.delete(5)
      @@board.insert(5,'X')
    elsif player_turn == "C1"
      @@board.delete(6)
      @@board.insert(6,'X')
    elsif player_turn == "C2"
      @@board.delete(7)
      @@board.insert(7,'X')
    elsif player_turn == "C3"
      @@board.delete(8)
      @@board.insert(8,'X')
    end
  end

  binding.pry

end
my_board = Board.new