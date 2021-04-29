class Player
  attr_accessor :name , :player_moves, :play, :player_1, :player_2
 
  def initialize(name)
    @name = name
    @player_moves = []
  end

  def victory_condition(victory)
    victory_condition_1 = ["A1" , "A2" , "A3"]
    victory_condition_2 = ["B1" , "B2" , "B3"]
    victory_condition_3 = ["C1" , "C2" , "C3"]
    victory_condition_4 = ["A1" , "B2" , "C3"]
    victory_condition_5 = ["A3" , "B2" , "C1"]
    victory_condition_6 = ["A1" , "B1" , "C1"]
    victory_condition_7 = ["A2" , "B2" , "C2"]
    victory_condition_8 = ["A3" , "B3" , "C3"]

        
    if @player_moves.sort & victory_condition_1 == victory_condition_1
      puts "Victoire"
      victory = 1   
    elsif @player_moves.sort & victory_condition_2 == victory_condition_2
      puts "Victoire"
      victory = 1
    elsif @player_moves.sort & victory_condition_3 == victory_condition_3
      puts "Victoire"
      victory = 1
    elsif @player_moves.sort & victory_condition_4 == victory_condition_4
      puts "Victoire"
      victory = 1
    elsif @player_moves.sort & victory_condition_5 == victory_condition_5
      puts "Victoire"
      victory = 1
    elsif @player_moves.sort & victory_condition_6 == victory_condition_6
      puts "Victoire"
      victory = 1
    elsif @player_moves.sort & victory_condition_7 == victory_condition_7
      puts "Victoire"
      victory = 1
    elsif @player_moves.sort & victory_condition_8 == victory_condition_8
      puts "Victoire"
      victory = 1 
    else 
      victory = 0
      "Continue"     
    end
  end


  def player_turn
    puts "Where do you want to play ?"
      play = gets.chomp.to_s
    
    if play == "A1"
      @player_moves << "A1"
      return "A1"
    elsif play == "A2"
      @player_moves << "A2"
      return "A1"
    elsif play == "A3"
      @player_moves << "A3"
    elsif play == "B1"
      @player_moves << "B1"
    elsif play == "B2"
      @player_moves << "B2"
    elsif play == "B3"
      @player_moves << "B3"
    elsif play == "C1"
      @player_moves << "C1"
    elsif play == "C2"
      @player_moves << "C2"
    elsif play == "C3"
      @player_moves << "C3"
    end
  end

  def show_state
    @player_moves
  end

 
end