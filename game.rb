# frozen_string_literal: true

require_relative 'display'
require_relative 'player'
require_relative 'board'

# class for Game
class Game
  include Display

  def initialize
    @board = nil
    @player_one = nil
    @player_two = nil
  end

  def play
    set_up_game
    game_started
  end

  private

  def set_up_game
    puts display_welcome_msg
    @player_one = Player.new('O')
    set_up_player(@player_one, 'Player One')
    @player_two = Player.new('X')
    set_up_player(@player_two, 'Player Two')
  end

  def set_up_player(player, p_string)
    puts display_get_player_name(p_string)
    player.name = gets.chomp
    puts display_well_created_player(player.name)
  end

  def game_started
    @board = Board.new
    puts @board.board_show
  end
end
