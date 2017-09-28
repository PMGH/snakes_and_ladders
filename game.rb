class Game

  def initialize(name, board, players, dice)
    @name = name
    @board = board
    @players = players
    @dice = dice
    @playersturn = @players
  end

  # getters
  def name()
    return @name
  end

  def board()
    return @board
  end

  def players()
    return @players
  end

  def dice()
    return @dice
  end

  def players_turn()
    return @playersturn[0]
  end

  # behaviour
  def next_turn()
    @playersturn = @playersturn.rotate()
  end

  def check_win(player)
    return true if player.position() >= 30
  end

  # run game
  def start_game()
    puts "SNAKES AND LADDERS"
    puts
    puts
  end

  def play_game()
    # set player to the first player in playersturn array
    player = @playersturn[0]
    puts
    # ** could be held in UI file?
    puts "#{player.name()}, would you like to roll?"
    # get reply from user
    reply = gets.chomp().downcase()
    # evaluate reply
    if (reply == "y") || (reply == "yes")

      # roll the dice and move player
      # ** split roll and move methods?
      player.roll(@dice) # also moves player

      # check the player position, is it on a snake or ladder? Also moves player
      # ** split evaluate position and move methods?
      @board.evaluate_position(player)

      # check if the player has won
      evaluate_win()
    else
      # end the game
      end_game()
    end
  end

  def evaluate_win()
    if check_win(player) == true
      end_game()
    else
      puts "#{player.name()}, you are on square #{player.position()}."
      next_turn()
      play_game()
    end
  end

  def end_game()
    player = @playersturn[0]
    if check_win(player) == true
      puts
      puts "#{player.name()} won!!"
    else
      puts
      puts "No winner this time."
    end
  end

end
