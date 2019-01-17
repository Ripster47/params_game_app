class Api::GamesController < ApplicationController
  
  def name_game
    @entry = params[:name]
    if @entry.upcase[0] == "A"
      @message = "Hey, your name starts with the first letter of the alphabet!"
    end
    render 'name_game.json.jbuilder'
  end

  def guess_the_number
    @guess = params[:guess].to_i
    @answer = 12
    if @guess == 12
      @message_2 = "You Win!"
    elsif @guess < 12
      @message_2 = "Too low!"
    else
      @message_2 = "Too high!"
    end
    render 'number_game.json.jbuilder'
        
    
  end

end
