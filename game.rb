class Game

  def initialize()
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    @player1_turn = true
  end

  def start_game
    puts "Welcome to the TwO-O Player Math Game! You both have 3 lives!"
    while @player1.lives > 0 && @player2.lives > 0 do
      ask_question(current_player)
      score_card
      @player1_turn = !@player1_turn
    end

    final_results
  end

  def current_player
    @player1_turn ? @player1 : @player2
  end

  def ask_question(player)
    question = Question.new
    puts "---- NEW TURN ----"
    puts "#{player.name}: #{question.prompt}"
    print "> "
    validate_answer(player, question)
  end

  def validate_answer(player, question)
    answer = gets.chomp.to_i
    question.right?(answer) ? player.won : player.lost
  end

  def score_card
    puts "#{@player1.name}: #{@player1.lives}/3 vs #{@player2.name}: #{@player2.lives}/3"
  end

  def final_results
    if @player1.lives > @player2.lives
      puts "Congratulations, #{@player1.name}! You win with a total of #{@player1.lives} remaining lives."
    else
      puts "Congratulations, #{@player2.name}! You win with a total of #{@player2.lives} remaining lives."
    end
  end

end
