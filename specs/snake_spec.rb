require('minitest/autorun')
require('minitest/rg')

require_relative('../snake')
require_relative('../player')
require_relative('../board')
require_relative('../dice')



class TestBoard < MiniTest::Test

  def setup()
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

    @dice = Dice.new(6)

  end

  def test_get_start_position()
    assert_equal(17, @snake1.start_position)
  end

  def test_get_end_position()
    assert_equal(4, @snake1.end_position)
  end




  def test_move_player()

    @player1.set_position(@snake1.start_position)

    @snake1.move_player(@player1)

    expected = @snake1.end_position()
    actual = @player1.position()

    assert_equal(expected, actual)

  end



end
