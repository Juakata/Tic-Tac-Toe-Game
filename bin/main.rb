# frozen_string_literal: true

require '../lib/game.rb'
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
    board.display_board
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
    player1.winner = true if board.check_map(move.to_i,player1.player.to_s)
    break if player1.winner
    board.display_board
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
    player2.winner = true if board.check_map(move.to_i,player2.player.to_s)
    break if player2.winner
  end
  board.display_board
  if player1.winner
    print "\n ***** The winner is player 1 ***** \n"
  else
    print "\n ***** The winner is player 2 ***** \n"
  end

  print "\n To play again enter 1:  "
  ans = gets.chomp
  play_again = true if ans.to_i == 1
end
