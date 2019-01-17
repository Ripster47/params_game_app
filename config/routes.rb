Rails.application.routes.draw do
namespace :api do 
  get '/names_game' => 'games#name_game'
  get '/number_game' => 'games#guess_the_number'
end
end
