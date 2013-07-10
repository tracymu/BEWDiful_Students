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
    puts "Hi #{@player_name}! "
    game = Game.new

  end
end

class Secret_Number
  def select_random_number
    numbers = *(1..10)
    secret_number = numbers.sample
  end
end


class Player
  
  
  def ask_name
    puts "What's your name?"
    @player_name=player_name
    player_name = gets.chomp
  end
end

class Game
  
  @guesses = 3
  Secret_Number.new

  def introduce_the_game
    puts "Welcome to the secret number game. "
    puts "To play this game, you need to guess a number between 1 and 10, you can have three tries"
    puts "Have a guess!"
  # While loop so that only 3 guesses allowed
  end


  def guessing
    while guesses > 0 
      puts "Have a guess!"
      guess = gets.chomp.to_i
      Game.guess    
    end
  end

  def guess(secret_number)
    if guess == secret_number
      puts "Congratulations, you win!"
      guesses = 0
    elsif guess < secret_number
      puts "Sorry, too low"
      guesses -= 1
      if guesses == 0
        puts "Oh no, you lose. The secret number was #{secret_number}"
      end
    elsif guess > secret_number
      puts "Sorry, too high"
      guesses -=1
      if guesses == 0
        puts "Oh no, you lose. The secret number was #{secret_number}"
      end
    end
  end
end



main = Main.new
main.play_game

