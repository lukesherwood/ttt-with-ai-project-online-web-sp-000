#!/usr/bin/env ruby

require_relative '../config/environment'
<<<<<<< HEAD
again = ""
while again != "N" do
   puts "\nWelcome to Command Line Tic Tac Toe!"
  puts "\nWhat kind of game will you like to play? Please choose player mode:
  1 - You VS Computer
  2 - You VS Your friend
  3 - Computer VS Computer"
=======

def game_start
  puts "Welcome to CLI Tic-Tac-Toe"
  puts "What kind of game do you want to play?"
  puts "Enter: 1 for single player vs computer, 2 for 2 player, and 3 for 2 computers"
>>>>>>> 438a38d5c6fe3b3491d7504714c0e269d454b5d7
  game_type = gets.strip
  #needs to create fix for edge cases (other than 123)
  if game_type == "1"
      puts "Would you like to play first [Y/N]"
      first = gets.strip.upcase
<<<<<<< HEAD
      #needs to create fix for edge cases (other than YN+yn)
=======
      #needs to create fix for edge cases (other than YN)
>>>>>>> 438a38d5c6fe3b3491d7504714c0e269d454b5d7
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
puts "Would like to play again? [Y/N]"
  again = gets.strip.upcase
end

  
  puts "Would like to play again? [Y/N]"
game_start until gets.strip == "N"
end

  

