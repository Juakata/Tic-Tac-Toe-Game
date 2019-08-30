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
  end

  def checkMap(v,symbol)
    winner = false
    case v
    when 1
      if @map[2] == symbol && @map[3] == symbol
        winner = true
      elsif @map[5] == symbol && @map[9] == symbol
        winner = true
      elsif @map[4] == symbol && @map[7] == symbol
        winner = true
      end
    when 2
      if @map[1] == symbol && @map[3] == symbol
        winner = true
      elsif @map[5] == symbol && @map[8] == symbol
        winner = true    
      end
    when 3
      if @map[1] == symbol && @map[2] == symbol
        winner = true
      elsif @map[5] == symbol && @map[7] == symbol
        winner = true
      elsif @map[6] == symbol && @map[9] == symbol
        winner = true
      end
    when 4
      if @map[1] == symbol && @map[7] == symbol
        winner = true
      elsif @map[5] == symbol && @map[6] == symbol
        winner = true
      end
    when 5
      if @map[2] == symbol && @map[8] == symbol
        winner = true
      elsif @map[4] == symbol && @map[6] == symbol
        winner = true
      elsif @map[3] == symbol && @map[7] == symbol
        winner = true
      elsif @map[1] == symbol && @map[9] == symbol
        winner = true
      end
    when 6
      if @map[3] == symbol && @map[9] == symbol
        winner = true
      elsif @map[5] == symbol && @map[4] == symbol
        winner = true
      end
    when 7
      if @map[1] == symbol && @map[4] == symbol
        winner = true
      elsif @map[5] == symbol && @map[3] == symbol
        winner = true
      elsif @map[8] == symbol && @map[9] == symbol
        winner = true
      end
    when 8
      if @map[2] == symbol && @map[5] == symbol
        winner = true
      elsif @map[7] == symbol && @map[9] == symbol
        winner = true
      end
    when 9
      if @map[3] == symbol && @map[6] == symbol
        winner = true
      elsif @map[1] == symbol && @map[5] == symbol
        winner = true
      elsif @map[7] == symbol && @map[8] == symbol
        winner = true
      end
    end
    return winner
  end
end
