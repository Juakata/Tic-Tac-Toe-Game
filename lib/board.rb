# frozen_string_literal: true

class Board
  def initialize
    @map = {}
    for i in 1..9
      map[i] = " "
    end
  end

  def display_board
    i=1
    3.times do
      print "\n #{@map[i]} | #{@map[i+1]} | #{@map[i+2]} \n"
      print "-----------" unless i<=6
      i+=3
    end
  end
end
