require_relative 'config/environment'
require "pry"

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/checkout' do
    @session = session
    @session[:item] = params[:item]
  end

end
