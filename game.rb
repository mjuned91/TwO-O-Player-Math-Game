class Game
  def initialize(name)
    @name = name
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
  end

  def start
    puts "Welcome #{@player1.name} and #{@player2.name}."
  end

  def score
    if @player1.dead
      winner(@player2)
    else
      winner(@player1) 
  end

  def stats
    puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
  end

  def winner(player)
    puts "#{player.name} wins with a score of #{player.lives}/3"
    puts "----- GAME OVER -----"
    puts "Good bye!"
    exit(0)
  end

  def turn
    @player1.question 
    score
    @player2.question
    score
    stats
    puts "----- NEW TURN -----"
    turn
  end

end