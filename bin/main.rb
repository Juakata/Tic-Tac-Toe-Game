# frozen_string_literal: true

require_relative '../lib/game.rb'
game = Game.new()
while game.play_again
  game.play_again = false
  print "\nSelect O or X for player 1: "
  symbol = gets.chomp
  symbol.capitalize!
  while !game.players.include?symbol
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

  board = Board.new()

  while true
    print board.display_board
    print "\nPlayer 1 options [1-9]: "
    move = gets.chomp
    while !game.options.include? move.to_i
      print "\nPleas select from 1 to 9: "
      move = gets.chomp
    end
    while !board.add_map(move.to_i,player1.player.to_s)
      print "\nOption already used, select a different option: "
      move = gets.chomp
    end
    board.winner = 1 if board.check_map(move.to_i,player1.player.to_s)
    break if board.winner != 0
    break if board.plays == 9
    print board.display_board
    print "\nPlayer 2 options [1-9]: "
    move = gets.chomp
    while !game.options.include? move.to_i
      print "\nPleas select from 1 to 9: "
      move = gets.chomp
    end
    while !board.add_map(move.to_i,player2.player.to_s)
      print "\nOption already used, select a different option: "
      move = gets.chomp
    end
    board.winner = 2 if board.check_map(move.to_i,player2.player.to_s)
    break if board.winner != 0
    break if board.plays == 9
  end
  print board.display_board
  if board.winner == 1
    print "\n ***** The winner is player 1 ***** \n"
  elsif board.winner == 2
    print "\n ***** The winner is player 2 ***** \n"
  else
    print "\n ***** DRAW! ***** \n"
  end

  print "\n To play again enter 1:  "
  ans = gets.chomp
  if ans.to_i == 1
    game.play_again = true
    board.plays = 0
  end
end
