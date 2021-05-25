class Question
  attr_reader :randomNum1, :randomNum2
  def generate_random_numbers 
    @randomNum1 = rand(19) + 1
    @randomNum2 = rand(19) + 1
  end

  def solution
    solution = randomNum1 + randomNum2
  end
end

q = Question.new
q.generate_random_numbers
puts q.randomNum1
puts q.randomNum2
puts "#{q.randomNum1} + #{q.randomNum2} = #{q.solution}"