class RockPaperScissorsController < ApplicationController

  def index
 initialize_weapons


  end



def guess
    initialize_weapons
    @guess = params[:guess]
    @computer_weapon = @weapons.sample
    
    case @guess 
    when "rock"
      if @computer_weapon == "rock"
        render "equal"
      elsif @computer_weapon == "scissors"
        render "win"
      else 
        render "lose"
      end
    when "paper"
      if @computer_weapon == "paper"
        render "equal"
      elsif @computer_weapon == "rock"
        render "win"
      else 
        render "lose"
      end
    when "scissors"
      if @computer_weapon == "scissors"
        render "equal"
      elsif @computer_weapon == "paper"
        render "win"
      else 
        render "lose"
      end
    end

    
  end

  

  protected
  def initialize_weapons

      @weapons = ["rock","paper","scissors"]
  end

end



  


    