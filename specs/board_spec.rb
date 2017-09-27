require('minitest/autorun')
require('minitest/rg')

require_relative('../board')
require_relative('../player')
require_relative('../dice')
require_relative('../snake')
require_relative('../ladder')


class TestBoard < MiniTest::Test

  def setup

    @ladder1 = Ladder.new(3, 22)
    @ladder2 = Ladder.new(5, 8)
    @ladder3 = Ladder.new(11, 26)
    @ladder4 = Ladder.new(20, 29)

    @ladders = [@ladder1, @ladder2, @ladder3, @ladder4]

    @snake1 = Snake.new(17, 4)
    @snake2 = Snake.new(19, 7)
    @snake3 = Snake.new(21, 9)
    @snake4 = Snake.new(27, 1)

    @snakes = [@snake1, @snake2, @snake3, @snake4]

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
      "win"
    ]

    @board = Board.new(@new_board)

    @player1 = Player.new("Peter", "Green")
    @player2 = Player.new("Fiona", "Blue")

    @dice = Dice.new(6)

  end


  def test_display_board()
    assert_equal(@new_board, @board.display_board())
  end

  def test_board_size()
    assert_equal(31, @board.size())
  end

  def test_board_can_move_player__ladder1()
    expected = @ladder1.end_position()
    @player1.set_position(@ladder1.start_position)

    @board.evaluate_position(@player1)
    actual = @player1.position()

    assert_equal(expected, actual)
  end

  def test_board_can_move_player__snake1()
    expected = @snake1.end_position()
    @player1.set_position(@snake1.start_position)

    @board.evaluate_position(@player1)
    actual = @player1.position()

    assert_equal(expected, actual)
  end


end
