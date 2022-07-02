# Generates the question with random number
class Question
  attr_accessor :answer

  def question # we can put player name parameter if players are to be displayed in one line.
    num1 = rand(1..20)
    num2 = rand(1..20)
    @answer = num1 + num2
    puts "What does #{num1} plus #{num2} equal? "
    @playerinput = gets.chomp

    if @playerinput == @answer.to_s
      puts "Yes! You are correct"
      return false
    else
      puts "Seriously? No!"
      return true
    end
  end

  # def check_answer?(input)
  #   @answer == input
  # end
end
