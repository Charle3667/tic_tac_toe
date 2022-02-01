class Game_Board
  attr_accessor :gameboard 
  def initialize
    @moves = 0
    @gameboard = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    @show_board = "#{@gameboard[6]} | #{@gameboard[7]} | #{@gameboard[8]}
#{@gameboard[3]} | #{@gameboard[4]} | #{@gameboard[5]}
#{@gameboard[0]} | #{@gameboard[1]} | #{@gameboard[2]}"
  end

  def move_iter
    @moves += 1
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
    self.move_iter
    self.gameboard[move-1] = id
    self.update_board
  end

  def run_game
    puts "Please enter name, Player One."
    @player_one = gets.strip
    puts "Thank you, #{@player_one}"
    puts "Please enter name, Player Two."
    @player_two = gets.strip
    puts "Thank you, #{@player_two}"
  end
end




game = Game_Board.new
game.move(4, "X")
puts game.get_board





# @@gameboard = [1, 2, 3, 4, 5, 6, 7, 8, 9]
# @@player_array = Array.new
# @@show_board = "#{@@gameboard[6]} | #{@@gameboard[7]} | #{@@gameboard[8]}
# #{@@gameboard[3]} | #{@@gameboard[4]} | #{@@gameboard[5]}
# #{@@gameboard[0]} | #{@@gameboard[1]} | #{@@gameboard[2]}"


# def check_board
#   if @@gameboard[6] == @@gameboard[7] && @@gameboard[8]
#     puts "Player Wins"
#   elsif @@gameboard[3] == @@gameboard[7] && @@gameboard[8]
#     puts "Player Wins"
#   elsif @@gameboard[1] == @@gameboard[2] && @@gameboard[3]
#     puts "Player Wins"
#   elsif @@gameboard[6] == @@gameboard[3] && @@gameboard[0]
#     puts "Player Wins"
#   elsif @@gameboard[7] == @@gameboard[4] && @@gameboard[1]
#     puts "Player Wins"
#   elsif @@gameboard[8] == @@gameboard[5] && @@gameboard[2]
#     puts "Player Wins"
#   elsif @@gameboard[6] == @@gameboard[4] && @@gameboard[2]
#     puts "Player Wins"
#   elsif @@gameboard[0] == @@gameboard[4] && @@gameboard[8]
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


