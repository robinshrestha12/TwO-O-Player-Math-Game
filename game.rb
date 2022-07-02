# it shows the winner/ game loop/ manage current player
class Game

  def initialize(player1, player2)
    @current_player = player1
    @player1 = player1
    @player2 = player2
  end

  def start
    # puts "What does #{num1} plus #{num2} equal? "
    # @playerinput = gets.chomp

  #  if @playerinput == @answer.to_s
  #     puts "Yes! You are correct"
  #   else
  #   "Seriously? No!"

    ##
    

   #Player.new(current_player)

    questionasked = Question.new
    #player1.questions
    puts "#{@current_player.name} :"
    questionfailed = questionasked.question
    if questionfailed == true
      @current_player.losslife;      
    end
    puts " P1: #{@player1.lives} /3 , P2: #{@player2.lives} /3 "

    if @current_player.lives == 0
      switch_player
      puts " #{@current_player.name} is the winner by #{@current_player.lives}"
      puts "Game Over"
      puts "----------Bye Bye --------"
    else 
      switch_player
      puts "---------New Turn---------"
      start
    end
    
    
    end
    

    def switch_player
      if @current_player == @player1
        @current_player = @player2
      else
        @current_player = @player1
      end
    end

  end