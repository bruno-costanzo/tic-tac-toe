# frozen_string_literal: true

# Class for Board Game
class Board
  attr_accessor :values

  def initialize
    @values = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end

  def board_show
    "\n #{@values[0]} | #{@values[1]} | #{@values[2]} \n" + "---+---+---\n"+ " #{@values[3]} | #{@values[4]} | #{@values[5]} \n" + "---+---+---\n"+" #{@values[6]} | #{@values[7]} | #{@values[8]} \n"
  end


end
