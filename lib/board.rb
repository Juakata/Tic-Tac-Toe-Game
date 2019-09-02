# frozen_string_literal: true

class Board
  attr_accessor :winner
  def initialize
    @wins1 = { 1 => [1, 2, 3], 2 => [4, 5, 6], 3 => [7, 8, 9], 4 => [1, 4, 7] }
    @wins2 = { 5 => [2, 5, 8], 6 => [3, 6, 9], 7 => [1, 5, 9], 8 => [3, 5, 7] }
    @wins = [@wins1, @wins2]
    @map = {}
    i = 1
    9.times do
      @map[i] = '.'
      i += 1
    end
    @winner = 0
  end

  def display_board
    i = 1
    3.times do
      print "\n #{@map[i]} | #{@map[i + 1]} | #{@map[i + 2]} \n"
      print '-----------' if i <= 6
      i += 3
    end
  end

  def add_map(val, symbol)
    result = false
    if @map[val] == '.'
      @map[val] = symbol
      result = true
    end
    result
  end

  def check_map(_val, symbol)
    win = true
    @wins.each do |element|
      element.each do |_key, value|
        win = true
        value.each do |i|
          win = false unless @map[i] == symbol
        end
        break if win
      end
      break if win
    end
    win
  end
end
