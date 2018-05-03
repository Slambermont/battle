require 'sinatra/base'
require './lib/alastair.rb'
require './lib/game.rb'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $game = Game.new(Alastair.new(params[:player_1_name]), Alastair.new(params[:player_2_name]))
    redirect '/play'
  end

  get '/play' do
    @game = $game
    # p @game
    # @player_1_name = $game.player_1.name
    # @player_2_name = $game.player_2.name
    erb(:play)
  end

  get '/crust' do
    @player_1_name = $game.player_1.name
    @player_2_name = $game.player_2.name
    @hp = $game.attack($game.player_2)
    erb(:crust)
  end

  run! if app_file == $0
end
