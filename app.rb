require 'sinatra/base'
require './lib/alastair.rb'
require './lib/game.rb'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player_1 = Alastair.new(params[:player_1_name])
    $player_2 = Alastair.new(params[:player_2_name])
    $game = Game.new
    redirect '/play'
  end

  get '/play' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    erb(:play)
  end

  get '/crust' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    @hp = $game.attack($player_2)
    erb(:crust)
  end

  run! if app_file == $0
end
