class Player
  attr_reader :name, :lives

  def initialize(name)
    @name = name
    @lives = 3
  end

  def lose_life
    @lives -= 1
  end

  def dead
    @lives == 0
  end

  def new_question
    new_question = Question.new
    new_question.question(name)
    print "> "
    @input = $stdin.gets.chomp
    if new_question.answer(@input.to_i)
      puts "Yes! You are correct."
    else
      puts "Seriously? No!"
      lose_life
    end
  end
end