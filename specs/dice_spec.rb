require('minitest/autorun')
require('minitest/rg')

require_relative('../dice')


class TestDice < MiniTest::Test

  def setup
    @dice = Dice.new(6)
  end


  def test_dice_sides()
    assert_equal(6, @dice.sides())
  end

  def test_dice_show_number()
    expected = true

    actual = (1..@dice.sides()).include?(@dice.roll())

    assert_equal(expected, actual)
  end


end
