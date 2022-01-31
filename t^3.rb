class GameBoard
  @@gameboard = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  @@player_array = Array.new
  def initialize
      puts "Please enter your name, player one."
      player_one = gets.strip 
      @player_one = player_one
      @@player_array.push(@player_one)
      puts "Hello, #{@player_one}. Now player two, please enter your name."
      player_two = gets.strip 
      @player_two = player_two
      @@player_array.push(@player_two)
      puts "Hello, #{@player_two}."
  end

  def players
    @@player_array
  end

  def show_board 
    "#{@@gameboard[6]} | #{@@gameboard[7]} | #{@@gameboard[8]}
#{@@gameboard[3]} | #{@@gameboard[4]} | #{@@gameboard[5]}
#{@@gameboard[0]} | #{@@gameboard[1]} | #{@@gameboard[2]}"
  end

  def check_board
    if @@gameboard[6] == @@gameboard[7] && @@gameboard[8]
      puts "Player Wins"
    elsif @@gameboard[3] == @@gameboard[7] && @@gameboard[8]
      puts "Player Wins"
    elsif @@gameboard[1] == @@gameboard[2] && @@gameboard[3]
      puts "Player Wins"
    elsif @@gameboard[6] == @@gameboard[3] && @@gameboard[0]
      puts "Player Wins"
    elsif @@gameboard[7] == @@gameboard[4] && @@gameboard[1]
      puts "Player Wins"
    elsif @@gameboard[8] == @@gameboard[5] && @@gameboard[2]
      puts "Player Wins"
    elsif @@gameboard[6] == @@gameboard[4] && @@gameboard[2]
      puts "Player Wins"
    elsif @@gameboard[0] == @@gameboard[4] && @@gameboard[8]
      puts "Player Wins"
    else 
      puts "Next Round"
    end
  end
end

class Move < GameBoard
  @@move = 0
  def initialize
    # for player in 
    @@move += 1
  end

  def make_player_one
    puts "please enter your name, player one."
    player_one = gets.strip 
    puts "Hello, #{player_one}"
  end

end



game_one = GameBoard.new



