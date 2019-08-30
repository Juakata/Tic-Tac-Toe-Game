# frozen_string_literal: true

class Player
  attr_reader :player
  attr_accessor :winner
  def initialize(player)
    @player = player
    @winner = false
  end
end
