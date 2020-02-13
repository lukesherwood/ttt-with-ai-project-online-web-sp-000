#!/usr/bin/env ruby

require_relative '../config/environment'

  puts "Welcome to CLI Tic-Tac-Toe"
  puts "What kind of game do you want to play?"
  puts "Enter: 1 for single player vs computer, 2 for 2 player, and 3 for 2 computers"
  game_type = gets.strip
  #needs to create fix for edge cases (other than 123)
  if game_type == "1"
      puts "Would you like to play first [Y/N]"
      first = gets.strip
      #needs to create fix for edge cases (other than YN)
      if first == "Y"
        Game.new(Players::Human.new("X"), Players::Computer.new("O"), Board.new).play
      elsif first == "N"
        Game.new(Players::Computer.new("X"), Players::Human.new("O"), Board.new).play
      end
  elsif game_type == "2"
    puts "Whoever wants to play first will be X"
    Game.new(Players::Human.new("X"), Players::Human.new("O"), Board.new).play
  elsif game_type == "3"
    puts "You will now watch two computers battle it out"
    Game.new(Players::Computer.new("X"), Players::Computer.new("O"), Board.new).play
  end
  

