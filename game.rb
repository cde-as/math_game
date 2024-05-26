require_relative 'player'
require_relative 'question'

class Game
  def initialize
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    @current_player = @player1
  end

  def play
  end

  def switch_turns
  end

  def game_over 
  end

  def show_score
  end

  def winner
  end

end
    