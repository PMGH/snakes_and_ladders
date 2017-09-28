require('minitest/autorun')
require('minitest/rg')

require_relative('../game')
require_relative('../player')
require_relative('../board')
require_relative('../dice')
require_relative('../snake')
require_relative('../ladder')


class TestGame < MiniTest::Test

  def setup()

    @ladder1 = Ladder.new(5, 8)
    @ladder2 = Ladder.new(3, 22)
    @ladder3 = Ladder.new(11, 26)
    @ladder4 = Ladder.new(20, 29)

    @snake1 = Snake.new(17, 4)
    @snake2 = Snake.new(19, 7)
    @snake3 = Snake.new(21, 9)
    @snake4 = Snake.new(27, 1)

    # ** D R Y...(Hash with snakes, ladders and their respective positions instead?)
    @new_board = [
      nil,  # nil for zeroth position
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

  end


  def test_game_name()
    assert_equal("snakes and ladders", @game.name())
  end

  def test_board()
    assert_equal(@board, @game.board())
  end

  def test_players()
    assert_equal(@players, @game.players())
  end

  def test_dice()
    assert_equal(@dice, @game.dice())
  end

  def test_players_turn()
    expected = @player1
    assert_equal(expected, @game.players_turn)
  end

  def test_next_turn()
    @game.next_turn()
    expected = @player2
    assert_equal(expected, @game.players_turn)
  end

  def test_check_win()
    @player1.set_position(30)

    actual = @game.check_win(@player1)

    assert_equal(true, actual)
  end

  def test_start_game()
    assert_nil(@game.start_game())
  end


end
