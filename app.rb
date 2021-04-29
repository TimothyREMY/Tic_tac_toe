require 'bundler'
Bundler.require


$:.unshift File.expand_path("./../lib", __FILE__)
require 'player'
require 'game'
#require 'board'

  my_game = Game.new
  
  #introduction
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
  
  
    player_1 = Player.new(player_1_name)
    player_2 = Player.new(player_2_name)
    my_game.beginning_of_the_fight(player_1_name, player_2_name, player_2)
    victory = 0

    while 
      victory = player_2.victory_condition(victory)
        if victory == 1
          break
        end
      my_game.continue?
      puts "#{player_1_name}, c'est à votre tour !"
      player_1.player_turn
      victory = player_1.victory_condition(victory)
        if victory == 1
          break
        end      
      my_game.continue?
      puts "#{player_2_name}, c'est à votre tour !"
      player_2.player_turn      
    end
  

binding.pry