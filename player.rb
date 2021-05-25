class Player
  attr_accessor :name, :lives

  def initialize (n)
    @name = n
    @lives = 3
  end

  def lose_life
    @lives = lives - 1
  end
end


mo = Player.new("mohamed");

