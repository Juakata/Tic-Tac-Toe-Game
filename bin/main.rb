# frozen_string_literal: true

require "../lib/player.rb"
require "../lib/board.rb"

play_again = true

while play_again
  play_again = false
  print "Select O or X for player 1: "
  player1 = Player.new(gets.chomp)
  print "Select O or X for player 2: "
  player2 = Player.new(gets.chomp)
  winner = false
  board = Board.new()
  while !winner
    board.display_board
    print "\nPlayer 1 options [1-9]: "
    move = gets.chomp
    board.display_board
    print "\nPlayer 2 options [1-9]: "
    move = gets.chomp
  end
  print "To play again enter 1: "
  ans = gets.chomp
  play_again=true if ans == 1
end
