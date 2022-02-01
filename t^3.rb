class Game_Board
  @@moves = 0
  def initialize
    @gameboard = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    @show_board = "#{@gameboard[6]} | #{@gameboard[7]} | #{@gameboard[8]}
#{@gameboard[3]} | #{@gameboard[4]} | #{@gameboard[5]}
#{@gameboard[0]} | #{@gameboard[1]} | #{@gameboard[2]}"
  end

  def current_board
    @show_board
  end

  def move(player)
    @@moves += 1
    puts "#{player}, make your move."
    move = gets.strip
    @gameboard.map! { |x| x == move ? 'Z' : x }
    return @gameboard
  end
end

class Players < Game_Board
    def initialize
      puts "Please enter name, Player One."
      @name_one = gets.strip
      puts "Thank you, #{@name_one}"
      puts "Please enter name, Player Two."
      @name_two = gets.strip
      puts "Thank you, #{@name_two}"
    end

    def get_name_one
      @name_one
    end

    def get_name_two
      @name
    end
end

players = Players.new
players.move(players.get_name_one)
puts player_one.current_board






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


