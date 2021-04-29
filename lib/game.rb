class Game

attr_accessor :player_1_moves, :player_2_moves, :player_1_name, :player_2_name, :player_1, :player_2


  #Scénario intro
  
  
  
# Scénario pré-fight
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
    puts player_2.player_turn
  else
    puts "#{player_1_name} will start the fight"
  end
end
  

  
  def continue?
    puts
    puts "------->  Entrée pour continuer  <---------"
    gets
    puts
end
  

  def initialize
    
  end
end