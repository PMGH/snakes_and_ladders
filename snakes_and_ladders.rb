# Require files

require_relative('./game')
require_relative('./player')
require_relative('./board')
require_relative('./dice')
require_relative('./snake')
require_relative('./ladder')


# Setup game

@ladder1 = Ladder.new(5, 8)
@ladder2 = Ladder.new(3, 22)
@ladder3 = Ladder.new(11, 26)
@ladder4 = Ladder.new(20, 29)

@snake1 = Snake.new(17, 4)
@snake2 = Snake.new(19, 7)
@snake3 = Snake.new(21, 9)
@snake4 = Snake.new(27, 1)

@new_board = [
  nil,
  nil,
  nil,
  @ladder1,
  nil,
  @ladder2,
  nil,
  nil,
  nil,
  nil,
  nil,
  @ladder3,
  nil,
  nil,
  nil,
  nil,
  nil,
  @snake1,
  nil,
  @snake2,
  @ladder4,
  @snake3,
  nil,
  nil,
  nil,
  nil,
  nil,
  @snake4,
  nil,
  nil,
  nil
]

@board = Board.new(@new_board)

@player1 = Player.new("Peter", "Green")
@player2 = Player.new("Fiona", "Blue")

@players = [@player1, @player2]

@dice = Dice.new(6)

@game = Game.new("snakes and ladders", @board, @players, @dice)


# Run the game

@game.start_game()
@game.play_game()
