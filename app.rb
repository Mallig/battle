require 'sinatra/base'

class Battle < Sinatra::Base

  get "/" do
    "fight to the death!"
  end

  run! if app_file == $0

end