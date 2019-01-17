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
    answer = 12

    if @guess == answer
      @message_2 = "You got it buddy!"
    elsif @guess < answer
      @message_2 = "Too low!"
    elsif @guess > 100
        @message_2 = "Woah there Jethro! Keep it between 1 and 100!"
    else
      @message_2 = "Too high!"
    end

    render 'number_game.json.jbuilder'
  end

end
