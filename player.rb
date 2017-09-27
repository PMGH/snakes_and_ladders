class Player

  # initialize
  def initialize(name, counter_colour)
    @name = name
    @colour = counter_colour
    @position = 1
  end


  # getters
  def name()
    return @name
  end

  def colour()
    return @colour
  end

  def position()
    return @position
  end

  def set_position(new_position)
    @position = new_position
  end
  

  # behaviour
  def roll(dice)
    dice_roll = dice.roll()
    @position += dice_roll
    return dice_roll
  end


end
