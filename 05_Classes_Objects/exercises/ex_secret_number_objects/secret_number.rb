###############################################################################
#
# Introduction to Ruby on Rails
#
# Object Oriented Secret Number
#
# Read the links below and complete this file. This Lab
# is to practice your knowledge of object oriented programming. 
#
###############################################################################
# Lets create an Object Oriented version of our Secret Number Game.
#	
# Your updated game should have 4 classes (Main, Secret_Number, Game and Player)
#
# Below is a description of each class and some guidelines for each. 
#
# Main
#	The main class is where the game begins. This class should tell the player who made it.
#	Ask the player for their name and ############instantiate the Game class.###########
#
# Secret_Number
#   This class should initiate an array of numbers that range between 1 - 10.
#   Use a method from the array class to select a random element from that array. This random number will be the secret number. 
#   This way the secret number is also a secret to you.
#
# Player
#  Should #######initialize the player's name. #########
#
# Game
#	This class holds most of the game logic and should:
#		Welcome players and inform them of the game rules.
#		Initialize the Player class.
# 		Initialize the Secret Number class.
# 		Prompt the user to choose a number, verify if the user guessed correctly.
# 		If the user guesses incorrectly let them know if they were too high or too low.
#		Monitor how many guesses the player has before the game is over.
#
# In creating your game, make sure it has arrays, hashes and all functionality is wrapped in methods.
# Add helpful comments to your code to document what each section does.
# 
# Tips: Copy paste your code from homework 1 where necessary. 

class Main
  def play_game
    puts "This game was made by TracyMu."
    player = Player.new
    player.ask_name
    puts "Hi #{player.player_name}! "
    game = Game.new
    game.introduce_the_game
    game.guessing
  end
end

class SecretNumber
  attr_accessor :random_number

  def select_random_number
    numbers = *(1..10)
    @random_number = numbers.sample
  end

end


class Player
  attr_accessor :player_name

  def ask_name
    puts "What's your name?"
    @player_name = gets.chomp
  end
end

class Game
  attr_accessor :guesses, :player_guess

  def introduce_the_game
    puts "Welcome to the secret number game. "
    puts "To play this game, you need to guess a number between 1 and 10, you can have three tries"
    
  end


  def guessing
    @secret_number = SecretNumber.new
    @random_number = @secret_number.select_random_number

    @guesses = 3
    while guesses > 0 
      puts "Have a guess!"
      @player_guess = gets.chomp.to_i
      guess  
    end
  end

  def guess
    if @player_guess == @random_number
      puts "Congratulations, you win! The secret number was #{@random_number}"
      @guesses = 0
      puts "Secret number is #{@random_number}"
    elsif @player_guess < @random_number
      puts "Sorry, too low"
      puts "Secret number is #{@random_number}"     
      @guesses -= 1
      if @guesses == 0
        puts "Oh no, you lose. The secret number was #{@random_number}"
      end
    elsif @player_guess > @random_number
      puts "Sorry, too high"
      puts "Secret number is #{@random_number}"     
      @guesses -= 1
      if @guesses == 0
        puts "Oh no, you lose. The secret number was #{@random_number}"
      end
    end
  end
end

main = Main.new
main.play_game




