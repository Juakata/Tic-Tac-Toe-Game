# frozen_string_literal: true

# spec/spec_methods.rb

require './lib/game.rb'

RSpec.describe Board do

  let(:board) { board = Board.new }

  describe '#add_map' do
    it 'returns true if the value can be added to the board' do
      expect(board.add_map(1, "X")).to eql(true)
    end
    it 'returns false if the value cannot be added to the board' do
      board.add_map(1, "X")
      expect(board.add_map(1, "X")).to eql(false)
    end
  end

  describe '#check_map' do
    it 'returns true if the board has the same symbol inline' do
      board.add_map(1, "X")
      board.add_map(2, "X")
      board.add_map(3, "X")
      expect(board.check_map("X")).to eql(true)
    end
    it 'returns false if the board does not have the same symbol inline' do
      board.add_map(1, "X")
      expect(board.check_map("X")).to eql(false)
    end
  end
end
