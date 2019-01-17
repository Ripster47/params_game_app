Rails.application.routes.draw do
namespace :api do 
  get '/names_game' => 'games#name_game'
  get '/number_game' => 'games#guess_the_number'
  get '/wild_number_game/:wild_number' => 'games#wild_number_game'
end
end
