# frozen_string_literal: true

class Player
  attr_reader :value, :symbol
  def initialize(value, symbol)
    @value = value
    @symbol = symbol
  end
end
