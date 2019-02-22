require_relative 'config/environment'

class App < Sinatra::Base
  
  get "/" do
    @session=session
    erb :index
  end
  
  configure do
    enable :sessions
    set :session_secret, "secret"
  end

  post "/checkout" do
    puts params
    @item = params["item"]
    session["item"]=params["item"]
    erb :cart
  end
  
end