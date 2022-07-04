# input/output
require './game'
require './player'
require './questions'

player1 = Player.new('Player1', 3)
player2 = Player.new('Player2', 3)

game = Game.new(player1, player2)
game.start
