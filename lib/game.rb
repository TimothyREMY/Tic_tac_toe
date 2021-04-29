class Game

  attr_accessor :player_1_moves, :player_2_moves, :player_1_name, :player_2_name, :player_1, :player_2, :moves_possible

    #Scénario intro
  def introduction
    puts "- Let's fight !"
    puts ""
    puts "- But at first, what are the names of our two fighters ?"
    puts ""
    puts "- Player 1 ?"
    print "> "
    player_1_name = gets.chomp.to_s
    puts ""
    puts "- Player 2 ?"
    print "> "
    player_2_name = gets.chomp.to_s
    puts ""
    puts "- Okay !"
    puts "- You are now ready to fight, #{player_1_name} and #{player_2_name}"    
    beginning_of_the_fight(player_1_name, player_2_name, player_1, player_2)
  end
    
  # Scénario pré-fight
  def beginning_of_the_fight(player_1_name, player_2_name, player_1, player_2)
    player_1 = Player.new(player_1_name)
    player_2 = Player.new(player_2_name)
    puts "Leeeeeet's fiiiiiight !!!!"
    puts ""
    puts "- Wait wait wait wait !"
    puts ""
    puts "- We have to decide who will be the one playing first !"
    puts ""
    puts "- Let's the dice of destiny decides..."
    puts "- If it is 1, #{player_1_name} will be the first one to play. If it is 2, #{player_2_name} will start the fight !"
    puts "- Spirit of the dice, give me your spiritual power to roll the dice"
    puts ""
    puts "(The dice is tossed, it is magical)"
    puts "Wooooooooooouch... ploc ploc ploc !"
    dice_of_destiny = rand(1..2)
    puts ""
    puts "The dice of destiny made a #{dice_of_destiny}"
    puts ""
    fight(dice_of_destiny, player_1_name, player_2_name, player_1, player_2)
  end

  #Fight sa mère
  def continue?
    puts
    puts "------->  Entrée pour continuer  <---------"
    gets
    puts
  end

  def fight(dice_of_destiny, player_1_name, player_2_name, player_1, player_2)
    my_board = Board.new
    board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
    moves_possible = ["A1" , "A2" , "A3" , "B1" , "B2" , "B3" , "C1" , "C2" , "C3"]
    
    if dice_of_destiny == 2
      puts my_board.board_presentation(board)
      puts "The player who will start the fight is #{player_2_name}"
      puts "What is your move ?"
      my_board.add_symbol_2(player_2.player_turn(moves_possible), board)
      Board.display_board(board) 
    else
      puts "#{player_1_name} will start the fight"
      puts my_board.board_presentation(board)
    end

      victory = 0

      while       
        victory = player_2.victory_condition(victory)
          if victory == 1
            puts "#{player_2_name} is the big winner !"
            break        
          end
        continue?
        puts "#{player_1_name}, c'est à votre tour !"
        my_board.add_symbol_1(player_1.player_turn(moves_possible), board)      
        Board.display_board(board)
        empty_moves = moves_possible.empty?
          if empty_moves == true
            puts "What a game, it is an even game !!"
            break
          end 
        victory = player_1.victory_condition(victory)
          if victory == 1
            puts "#{player_2_name} is the big winner !"
            break
          end
        continue?
        puts "#{player_2_name}, c'est à votre tour !"
        my_board.add_symbol_2(player_2.player_turn(moves_possible), board)
        Board.display_board(board)
          empty_moves = moves_possible.empty?
          if empty_moves == true
            puts "What a game, it is an even game !!"
            break
          end 
      end
      end_of_fight(dice_of_destiny, player_1_name, player_2_name, player_1, player_2)
    end

    def end_of_fight(dice_of_destiny, player_1_name, player_2_name, player_1, player_2)
      puts "1- Do you want a rematch with the same participants ?"
      puts "2- Or do you prefer to make the rematch with new participants ?"
      puts "3- You can also leave but you would be big cowards..."
      puts ""
      puts "What do you decide ?"
      print "> "
      sophies_choice = gets.chomp.to_i
      possible_choices = [1, 2, 3]
      while
        correct_choice = possible_choices.include?(sophies_choice)
        if correct_choice == true
          break
        end
        puts "You miss this easy task, retry !"
      end

      if sophies_choice == 1
        beginning_of_the_fight(player_1_name, player_2_name, player_1, player_2)
      end
      if sophies_choice == 2
        introduction
      end
      if sophies_choice == 3
        exit
      end

    end

    def initialize
    end
end