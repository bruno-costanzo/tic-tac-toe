# frozen_string_literal: true

# Class for Board Game
class Board
  attr_accessor :values

  def initialize
    @values = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
  end

  def board_show
    "\n #{@values[0][0]} | #{@values[0][1]} | #{@values[0][2]} \n" + "---+---+---\n"+ " #{@values[1][0]} | #{@values[1][1]} | #{@values[1][2]} \n" + "---+---+---\n"+" #{@values[2][0]} | #{@values[2][1]} | #{@values[2][2]} \n"
  end


end
