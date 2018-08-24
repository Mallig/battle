require 'sinatra/base'
require './lib/player'


class Battle < Sinatra::Base
  enable :sessions

  get "/" do
    erb(:index)
  end

  post "/names" do
    $player_1 = Player.new(params["player_1"])
    $player_2 = Player.new(params["player_2"])
    $game = Game.new
    redirect "/play"
  end

  get "/attack" do
    p params
    @player_1 = $player_1
    @player_2 = $player_2
    $game.attack(@player_2)
    erb(:attack)
  end

  get "/play" do
    erb(:play)
  end

  run! if app_file == $0

end