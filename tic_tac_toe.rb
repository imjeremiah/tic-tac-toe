class Player
  attr_accessor :name
  def initialize(name)
    @name = name
  end
end

class Game
  attr_accessor :board, :game_over, :turn_count, :current_player
  def initialize()
    @board = [[1,2,3], [4,5,6], [7,8,9]]
    @game_over = false
    @turn_count = 0
    @current_player
  end
end

player1 = Player.new("X")
player2 = Player.new("O")

game = Game.new()
game.current_player = player1.name

while !game.game_over 
  game.turn_count += 1
  puts "Player #{game.current_player}'s turn! Choose an empty square and hit enter:"
  choice = gets.chomp

  case choice
  when "1"
    game.board[0][0] = game.current_player   
  when "2"
    game.board[0][1] = game.current_player
  when "3"
    game.board[0][2] = game.current_player
  when "4"
    game.board[1][0] = game.current_player
  when "5"
    game.board[1][1] = game.current_player
  when "6"
    game.board[1][2] = game.current_player
  when "7"
    game.board[2][0] = game.current_player
  when "8"
    game.board[2][1] = game.current_player
  when "9"
    game.board[2][2] = game.current_player
  end

  board = "#{game.board[0][0]} | #{game.board[0][1]} | #{game.board[0][2]}\n#{game.board[1][0]} | #{game.board[1][1]} | #{game.board[1][2]}\n#{game.board[2][0]} | #{game.board[2][1]} | #{game.board[2][2]}"
  puts board

  if (game.board[0][0] == game.current_player && game.board[0][1] == game.current_player && game.board[0][2] == game.current_player) || 
     (game.board[1][0] == game.current_player && game.board[1][1] == game.current_player && game.board[1][2] == game.current_player) ||
     (game.board[2][0] == game.current_player && game.board[2][1] == game.current_player && game.board[2][2] == game.current_player) ||
     (game.board[0][0] == game.current_player && game.board[1][0] == game.current_player && game.board[2][0] == game.current_player) ||
     (game.board[0][1] == game.current_player && game.board[1][1] == game.current_player && game.board[2][1] == game.current_player) ||
     (game.board[0][2] == game.current_player && game.board[1][2] == game.current_player && game.board[2][2] == game.current_player) ||
     (game.board[0][0] == game.current_player && game.board[1][1] == game.current_player && game.board[2][2] == game.current_player) ||
     (game.board[0][2] == game.current_player && game.board[1][1] == game.current_player && game.board[2][0] == game.current_player) 
 
   puts "\n\n#{game.current_player} WINS!!\n\n#{board}"
   game.game_over = true
  end

  if game.current_player == "X"
    game.current_player = player2.name
    else game.current_player = player1.name
  end

 if game.turn_count == 9
  puts "\n\nCATS GAME :(\n\n#{board}"
  game.game_over = true
 end
end