# frozen_string_literal: true

require_relative 'player'
require_relative 'game'
require_relative 'display'
require_relative 'board'

# Starting the program
def play_game
  game = Game.new
  game.play
end

# For playing again
# def start_new_game
#   puts 'Would you like to play again?'
#   response = gets.chomp.downcase
# end

play_game
