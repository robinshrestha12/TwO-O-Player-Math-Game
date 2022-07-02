#Generates the player object and initializes name and lives
require './questions'
class Player
 attr_accessor :name, :lives
  def initialize(name, lives)
    @name = name
    @lives = lives
  end

  def losslife
    @lives -= 1
  end
  def has_nolife
    @lives == 0
  end
  def new_question

    new_question = Questions.new
  end
end