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
    redirect "/play"
  end

  get "/attack" do
    p params
    params["attacker"] == "player_1" ? $player_2.attack : $player_1.attack
    erb(:attack)
  end

  get "/play" do
    erb(:play)
  end

  run! if app_file == $0

end