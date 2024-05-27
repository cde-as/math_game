class Question 
  attr_reader :num1, :num2, :answer

  def initialize
    @num1 = rand(1..10)
    @num2 = rand(1..10)
    @answer = @num1 + @num2
  end

  def ask_math_question(player_name)
    puts "#{player_name}: What is #{@num1} + #{@num2}?"
  end

  def correct?(input)
    input.to_i == @answer
  end
end