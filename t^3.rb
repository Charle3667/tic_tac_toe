class Game_Board
  attr_accessor :gameboard 
  def initialize
    @player_one = nil
    @player_two = nil
    @winner = nil
    @game_over = false
    @moves = 0
    @gameboard = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    @show_board = "#{@gameboard[6]} | #{@gameboard[7]} | #{@gameboard[8]}
#{@gameboard[3]} | #{@gameboard[4]} | #{@gameboard[5]}
#{@gameboard[0]} | #{@gameboard[1]} | #{@gameboard[2]}"
  end

  def game_over
    @game_over
  end

  def game_end
    @game_over = true
  end

  def move_iter
    @moves += 1
  end

  def get_player_one
    @player_one
  end

  def update_player_one(name)
    @player_one = name
  end

  def get_player_two
    @player_two
  end

  def update_player_two(name)
    @player_two = name
  end

  def get_winner
    @winner
  end

  def update_winner(name)
    if name == "X"
      @winner = self.get_player_one
    else  
      @winner = self.get_player_two
    end
  end

  def update_board
    @show_board = "#{self.gameboard[6]} | #{self.gameboard[7]} | #{self.gameboard[8]}
#{self.gameboard[3]} | #{self.gameboard[4]} | #{self.gameboard[5]}
#{self.gameboard[0]} | #{self.gameboard[1]} | #{self.gameboard[2]}"
  end

  def get_board
    @show_board
  end

  def move_number
    @moves
  end

  def move(move, id)
    the_move = move.to_i
    self.move_iter
    self.gameboard[the_move-1] = id
    self.update_board
    puts self.get_board
    self.check_board
  end


  def check_board
    if (self.gameboard[6] == self.gameboard[7] && self.gameboard[6] == self.gameboard[8])
      self.update_winner(self.gameboard[6])
      self.game_end
    elsif self.gameboard[3] == self.gameboard[4] && self.gameboard[3] == self.gameboard[5]
      self.update_winner(self.gameboard[3])
    elsif self.gameboard[0] == self.gameboard[1] &&  self.gameboard[0] == self.gameboard[2]
      self.update_winner(self.gameboard[0])
      self.game_end
    elsif self.gameboard[6] == self.gameboard[3] && self.gameboard[6] == self.gameboard[0]
      self.update_winner(self.gameboard[6])
      self.game_end
    elsif self.gameboard[7] == self.gameboard[4] && self.gameboard[7] == self.gameboard[1]
      self.update_winner(self.gameboard[7])
      self.game_end
    elsif self.gameboard[8] == self.gameboard[5] && self.gameboard[8] == self.gameboard[2]
      self.update_winner(self.gameboard[8])
      self.game_end
    elsif self.gameboard[6] == self.gameboard[4] &&  self.gameboard[6] == self.gameboard[2]
      self.update_winner(self.gameboard[6])
      self.game_end
    elsif self.gameboard[0] == self.gameboard[4] && self.gameboard[0] == self.gameboard[8]
      self.update_winner(self.gameboard[0])
      self.game_end
    else 
      puts "Next Round"
    end
  end

  def run_game
    puts "Please enter name, Player One."
    @new_player_one = gets.strip
    update_player_one(@new_player_one)
    puts "Thank you, #{self.get_player_one}"
    puts "Please enter name, Player Two."
    @new_player_two = gets.strip
    update_player_two(@new_player_two)
    puts "Thank you, #{self.get_player_two}"
    puts self.get_board
    while self.game_over == false
      if self.move_number < 9 && self.game_over == false
        puts "#{@player_one}, make your move."
        one_move = gets.strip
        self.move(one_move, "X")
      end
      if self.move_number < 9 && self.game_over == false
        puts "#{@player_two}, make your move."
        two_move = gets.strip
        self.move(two_move, "O")
      else
        if self.move_number > 8
          puts "Cat's Game!"
        else
          puts "#{self.get_winner} has won the game!"
        end
      end
    end
  end
end




game = Game_Board.new
game.run_game





# self.gameboard = [1, 2, 3, 4, 5, 6, 7, 8, 9]
# self.player_array = Array.new
# self.show_board = "#{self.gameboard[6]} | #{self.gameboard[7]} | #{self.gameboard[8]}
# #{self.gameboard[3]} | #{self.gameboard[4]} | #{self.gameboard[5]}
# #{self.gameboard[0]} | #{self.gameboard[1]} | #{self.gameboard[2]}"


# def check_board
#   if self.gameboard[6] == self.gameboard[7] && self.gameboard[8]
#     puts "Player Wins"
#   elsif self.gameboard[3] == self.gameboard[7] && self.gameboard[8]
#     puts "Player Wins"
#   elsif self.gameboard[1] == self.gameboard[2] && self.gameboard[3]
#     puts "Player Wins"
#   elsif self.gameboard[6] == self.gameboard[3] && self.gameboard[0]
#     puts "Player Wins"
#   elsif self.gameboard[7] == self.gameboard[4] && self.gameboard[1]
#     puts "Player Wins"
#   elsif self.gameboard[8] == self.gameboard[5] && self.gameboard[2]
#     puts "Player Wins"
#   elsif self.gameboard[6] == self.gameboard[4] && self.gameboard[2]
#     puts "Player Wins"
#   elsif self.gameboard[0] == self.gameboard[4] && self.gameboard[8]
#     puts "Player Wins"
#   else 
#     puts "Next Round"
#   end
# end

def move 
  move = gets.strip
  @gameboard.map! { |x| x == move ? 'Z' : x }
  return @gameboard
end


