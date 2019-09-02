# frozen_string_literal: true

class Board
  attr_accessor :winner
  def initialize
    @wins1 = { 1 => [1, 2, 3], 2 => [1, 5, 9], 3 => [1, 4, 7], 4 => [2, 1, 3], 5 => [2, 5, 8], 6 => [3, 1, 2] }
    @wins2 = { 7 => [3, 5, 7], 8 => [3, 6, 9], 9 => [4, 1, 7], 10 => [4, 5, 6], 11 => [5, 2, 8], 12 => [5, 4, 6] }
    @wins3 = { 13 => [5, 3, 7], 14 => [5, 1, 9], 16 => [6, 3, 9], 17 => [6, 5, 4], 18 => [7, 1, 4], 19 => [7, 5, 3] }
    @wins4 = { 20 => [7, 8, 9], 21 => [8, 2, 5], 22 => [8, 7, 9], 23 => [9, 3, 6], 24 => [9, 1, 5], 25 => [9, 7, 8] }
    @wins = [@wins1, @wins2, @wins3, @wins4]
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
