require_relative 'player'
require_relative 'question'

class Game
  def initialize
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    @current_player = @player1
  end

  def play
    until game_over?
      question = Question.new
      question.ask_math_question(@current_player.name)
      print "> "
      answer = gets.chomp

      if question.correct?(answer)
        puts "YES! You are correct."
      else
        puts "Seriously? No!"
        @current_player.lose_a_life
      end

      show_scores
      switch_turns
      puts "----- NEW TURN -----" unless game_over?
    end

    winner
    puts "----- GAME OVER -----"
  end


  def switch_turns
    @current_player = (@current_player == @player1) ? @player2 : @player1
  end

  def game_over?
    !@player1.alive? || !@player2.alive?
  end

  def show_scores
    puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
  end

  def winner
    if @player1.alive?
      puts "Player 1 wins with a score of #{@player1.lives}/3"
    else
      puts "Player 2 wins with a score of #{@player2.lives}/3"
    end
end

end