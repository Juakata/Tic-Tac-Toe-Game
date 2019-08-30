# frozen_string_literal: true

class Board
  def initialize
    @map = {}
    for i in 1..9
      @map[i] = "."
    end
  end

  def display_board
    i=1
    3.times do
      print "\n #{@map[i]} | #{@map[i+1]} | #{@map[i+2]} \n"
      print "-----------" if i<=6
      i+=3
    end
  end

  def addMap(v,symbol)
    @map[v] = symbol
    checkMap(v)
  end

  def checkMap(v)
    case v
    when 1
    when 2
    when 3
    when 4
    when 5
    when 6
    when 7
    when 8
    when 9
    end
  end
end
