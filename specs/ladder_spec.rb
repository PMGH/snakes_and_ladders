require('minitest/autorun')
require('minitest/rg')

require_relative('../ladder')
require_relative('../player')
require_relative('../board')
require_relative('../dice')


class TestLadder < MiniTest::Test

  def setup()
    @ladder1 = Ladder.new(5, 8)
    @ladder2 = Ladder.new(3, 22)
    @ladder3 = Ladder.new(11, 26)
    @ladder4 = Ladder.new(20, 29)

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
    assert_equal(5, @ladder1.start_position)
  end

  def test_get_end_position()
    assert_equal(8, @ladder1.end_position)
  end


  def test_move_player()

    @player1.set_position(@ladder1.start_position)

    @ladder1.move_player(@player1)

    expected = @ladder1.end_position()
    actual = @player1.position()

    assert_equal(expected, actual)

  end


end
