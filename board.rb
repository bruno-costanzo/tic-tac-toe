# frozen_string_literal: true

# Class for Board Game
class Board
  attr_accessor :values
  attr_reader :checkers_idx

  def initialize
    @values = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    @checkers_idx = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]
  end

  def board_show
    "\n #{@values[0]} | #{@values[1]} | #{@values[2]} \n" + "---+---+---\n" + " #{@values[3]} | #{@values[4]} | #{@values[5]} \n" + "---+---+---\n" + " #{@values[6]} | #{@values[7]} | #{@values[8]} \n"
  end
end
