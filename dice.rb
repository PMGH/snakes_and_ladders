class Dice

  # initialize
  def initialize(sides)
    @sides = sides
    @showing_side = 1
  end

  # getter
  def sides()
    return @sides
  end


  # behaviour
  def roll()
    return @showing_side = rand(1..6)
  end


end
