# frozen_string_literal: true

require "../lib/player.rb"
require "../lib/board.rb"

play_again = true
options = [1,2,3,4,5,6,7,8,9]

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
    while !options.include? move.to_i
      print "\nPleas select from 1 to 9: "
      move = gets.chomp
    end
    board.addMap(move.to_i,player1.player.to_s)
    board.display_board
    print "\nPlayer 2 options [1-9]: "
    move = gets.chomp
    while !options.include? move.to_i
      print "\nPleas select from 1 to 9: "
      move = gets.chomp
    end
    board.addMap(move.to_i,player2.player.to_s)
  end
  print "To play again enter 1: "
  ans = gets.chomp
  play_again=true if ans == 1
end
