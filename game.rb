class Game
  def initialize
    @p1 = Player.new("Player 1")
    @p2 = Player.new("Player 2")
    @current_player = @p1
    @other_player = @p2
    @turn = 1
    puts "Welcome to the super serious Math Game of Destiny!"
  end

  # change turns
  def change_turn
    if @current_player == @p1
      @current_player = @p2
      @other_player = @p1
    else
      @current_player = @p1
      @other_player = @p2
    end
    # 
  end

  # loop through turn until is_dead
  def run_game
    game = true
    while game do
      # display score
      puts "Turn #{@turn} "
      puts "#{@current_player.name} has #{@current_player.lives} lives"
      puts "#{@other_player.name} has #{@other_player.lives} lives"

      # create question
      q = Question.new
      puts "#{@current_player.name}: #{q.question}"
      answer = gets.chomp.to_i
      solution = q.solution
      unless answer == solution
        @other_player.lose_life
        puts "Incorrect! The right answer was #{solution}!"
      else
        puts "YES! You are a math genius"
      end
      puts @other_player.is_dead?
      # check winners
      if @other_player.is_dead?
        # if winner exit the loop
        game = false
        puts "#{@other_player.name} has lost all their lives :("
        puts "#{@current_player.name} is the WINNER!!"
      end
      
      # change turns
      
      change_turn
      @turn = @turn + 1
    end
  end

end