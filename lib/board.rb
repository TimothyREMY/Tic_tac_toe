class Board
require 'pry'
attr_accessor :board

  board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

  def initialize
  end

  def self.display_board(the_board)
    puts ("  #{the_board[0]} | #{the_board[1]}  | #{the_board[2]}  ").center(150)
    puts ("-----------").center(150)
    puts ("  #{the_board[3]} | #{the_board[4]}  | #{the_board[5]}  ").center(150)
    puts ("-----------").center(150)
    puts ("  #{the_board[6]} | #{the_board[7]}  | #{the_board[8]}  ").center(150)
  end

  def board_presentation(board)
    board[0] = "A1"
    board[1] = "A2"
    board[2] = "A3"
    board[3] = "B1"
    board[4] = "B2"
    board[5] = "B3"
    board[6] = "C1"
    board[7] = "C2"
    board[8] = "C3"
  end

  def add_symbol_2(player_turn, board)
    if player_turn == "A1"
      board[0] = "X"
    elsif player_turn == "A2"
      board[1] = "X"
    elsif player_turn == "A3"
      board[2] = "X"
    elsif player_turn == "B1"
      board[3] = "X"
    elsif player_turn == "B2"
      board[4] = "X"
    elsif player_turn == "B3"
      board[5] = "X"
    elsif player_turn == "C1"
      board[6] = "X"
    elsif player_turn == "C2"
      board[7] = "X"
    elsif player_turn == "C3"
      board[8] = "X"
    end
  end

  def add_symbol_1(player_turn, board)
    if player_turn == "A1"
      board[0] = "O"
    elsif player_turn == "A2"
      board[1] = "O"
    elsif player_turn == "A3"
      board[2] = "O"
    elsif player_turn == "B1"
      board[3] = "O"
    elsif player_turn == "B2"
      board[4] = "O"
    elsif player_turn == "B3"
      board[5] = "O"
    elsif player_turn == "C1"
      board[6] = "O"
    elsif player_turn == "C2"
      board[7] = "O"
    elsif player_turn == "C3"
      board[8] = "O"
    end
  end
end
