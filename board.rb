class Board

  def initialize(board)
    @board = board
  end

  # getters
  def display_board()
    return @board
  end

  def size()
    return @board.length()
  end

  # evaluating if landed on snake/ladder/exceeds board
  def evaluate_position(player)
    if @board[player.position()] != nil  # nil go to end
      snake_or_ladder = @board[player.position()] # snake or ladder
      snake_or_ladder.move_player(player)
    end
  end 


end
