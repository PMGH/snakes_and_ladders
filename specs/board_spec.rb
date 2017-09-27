require('minitest/autorun')
require('minitest/rg')

require_relative('../board')
require_relative('../player')
require_relative('../dice')


class TestBoard < MiniTest::Test

  def setup
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


  def test_display_board()
    assert_equal(@new_board, @board.display_board())
  end

  def test_board_size()
    assert_equal(31, @board.size())
  end




end
