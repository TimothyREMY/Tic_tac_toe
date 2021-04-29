class Game

attr_accessor :player_1_moves, :player_2_moves, :player_1_name, :player_2_name, :player_1, :player_2


  #Scénario intro

  def introduction
    puts "- Let's fight !"
    puts ""
    puts "- But at first, what are the names of our two fighters ?"
    puts ""
    puts "- Player 1 ?"
    print "> "
    player_1_name = gets.chomp.to_s
    player_1 = Player.new(player_1_name)
    puts ""
    puts "- Player 2 ?"
    print "> "
    player_2_name = gets.chomp.to_s
    player_2 = Player.new(player_2_name)
    puts ""
    puts "- Okay !"
    puts "- You are now ready to fight, #{player_1_name} and #{player_2_name}"
  
  end
  

  def beginning_of_the_fight(player_1_name, player_2_name, player_2)
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
    if dice_of_destiny == 2
      puts "The player who will start the fight is #{player_2_name}"
      puts "What is your move ?"
      play = gets.chomp.to_s
      Player.pre_turn_2(play, player_2)
    else
      puts "#{player_1_name} will start the fight"
    end
  end
  
  
  

  def initialize
    introduction
    beginning_of_the_fight(player_1_name, player_2_name, player_2)
  end
end