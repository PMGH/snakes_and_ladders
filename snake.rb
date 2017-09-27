class Snake

  def initialize(start_position, end_position)
   @start = start_position
   @end = end_position
  end

  def start_position()
    return @start
  end

  def end_position()
    return @end
  end

  def move_player(player)
    player.set_position(self.end_position)
  end

end
