class Question
  attr_reader :randomNum1, :randomNum2
  def initialize 
    @randomNum1 = rand(19) + 1
    @randomNum2 = rand(19) + 1
  end

  def question
    "What does #{randomNum1} plus #{randomNum2} equal? "
  end

  def solution
    solution = randomNum1 + randomNum2
  end
end

# q = Question.new
# puts q.randomNum1
# puts q.randomNum2
# puts q.question
# answer = gets.chomp 
# puts "your answer is#{answer} solution is #{q.solution}"