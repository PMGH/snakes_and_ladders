require('minitest/autorun')
require('minitest/rg')

require_relative('../player')
require_relative('../dice')


class TestPlayer < MiniTest::Test

  def setup
    @player1 = Player.new("Peter", "Green")
    @player2 = Player.new("Fiona", "Blue")

    @dice = Dice.new(6)
  end


  def test_name()
    assert_equal("Peter", @player1.name())
    assert_equal("Fiona", @player2.name())
  end

  def test_colour()
    assert_equal("Green", @player1.colour())
    assert_equal("Blue", @player2.colour())
  end

  # test initialized position
  def test_player_position()
    assert_equal(1, @player1.position())
    assert_equal(1, @player2.position())
  end

  def test_can_players_roll()
    expected = true

    actual = (1..@dice.sides()).include?(@player1.roll(@dice))
    assert_equal(expected, actual)

    actual = (1..@dice.sides()).include?(@player2.roll(@dice))
    assert_equal(expected, actual)
  end

  def test_player_position_increments()
    roll = @player1.roll(@dice)
    expected = 1 + roll

    actual = @player1.position()

    assert_equal(expected, actual)


    roll = @player2.roll(@dice)
    expected = 1 + roll

    actual = @player2.position()

    assert_equal(expected, actual)
  end

  def test_set_position()
    @player1.set_position(15)
    assert_equal(15, @player1.position)
  end


end
