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
    @current_player = nil
  end

  def play
    set_up_game
    game_starter
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

  def game_starter
    @board = Board.new
    puts @board.board_show
    playing_game
  end

  def playing_game
    until winner?
      @current_player = turn_of(@current_player)
      puts display_turn_msg(@current_player)
      @board.values[movement_by_player] = @current_player.symbol
    end
  end

  def winner?
    check_board
  end

  def turn_of(player)
    player == @player_one ? @player_two : @player_one
  end

  def movement_by_player
    puts @board.board_show
    number_picker
  end

  def number_picker
    number = nil
    number = gets.chomp.to_i until @board.values.index(number)
    number - 1
  end

  def check_board
    winner = check
    puts winner
    winner
  end

  # El problema principal ahora es que checkers pone sus valores en el momento de la asignación.
  def check
    winner = false
    @board.checkers_idx.each do |idxs|
      winner = true if @board.values[idxs[0]].to_s + @board.values[idxs[1]].to_s + @board.values[idxs[2]].to_s == "OOO" || @board.values[idxs[0]].to_s + @board.values[idxs[1]].to_s + @board.values[idxs[2]].to_s == "XXX"
    end
    puts @board.board_show if winner == true
    winner
  end
end
