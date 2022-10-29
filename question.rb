class Question
  def initialize
    @number1 = rand(1..20)
    @number2 = rand(1..20)
    @sum = @number1 + @number2
  end

  def question(name)
    puts "#{name}: What does #{@number1} plus #{@number2} equal?"
  end

  def answer(answer)
    @sum == answer
  end
end