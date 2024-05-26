class Player
  attr_reader :name, :lives

  def initialize(name)
    @name = name
    @lives = 3
  end

  def lose_a_life
    @lives -= 1
  end

  def alive? 
    @lives > 0
  end
end