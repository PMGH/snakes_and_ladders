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

end
