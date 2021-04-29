class Player
  attr_accessor :name , :player_moves, :play, :player_1, :player_2, :moves_possible
 
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


  def player_turn(moves_possible)
    puts "Where do you want to play ?"
            
      while 
        play = gets.chomp.to_s
        move_is_correct = moves_possible.include?(play)
        if move_is_correct == true
          break
        end
        puts "Rejouez !"
      end

      if play == "A1"
        @player_moves << "A1"
        moves_possible.delete("A1")
        puts "#{moves_possible}"
        return "A1"
      elsif play == "A2"
        @player_moves << "A2"
        moves_possible.delete("A2")
        puts "#{moves_possible}"
        return "A2"
      elsif play == "A3"
        @player_moves << "A3"
        moves_possible.delete("A3")
        return "A3"
      elsif play == "B1"
        @player_moves << "B1"
        moves_possible.delete("B1")
        return "B1"
      elsif play == "B2"
        @player_moves << "B2"
        moves_possible.delete("B2")
        return "B2"
      elsif play == "B3"
        @player_moves << "B3"
        moves_possible.delete("B3")
        return "B3"
      elsif play == "C1"
        @player_moves << "C1"
        moves_possible.delete("C1")
        return "C1"
      elsif play == "C2"
        @player_moves << "C2"
        moves_possible.delete("C2")
        return "C2"
      elsif play == "C3"
        @player_moves << "C3"
        moves_possible.delete("C3")
        return "C3"
      end
  end  
end