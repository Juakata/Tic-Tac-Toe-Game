# frozen_string_literal: true

require "../lib/player.rb"
require "../lib/board.rb"

play_again = true

while play_again
  play_again = false
  print "Select O or X for player 1: "
  symbol = gets.chomp
  symbol.capitalize!
  while symbol != "O" && symbol != "X"
    print "Please select O or X : "
    symbol = gets.chomp
    symbol.capitalize!
  end
  player1 = Player.new(symbol)
  if player1.player == "X"
    player2 = Player.new("O")
  else
    player2 = Player.new("X")
  end
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
