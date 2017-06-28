require 'sinatra/base'
require 'garage_opener'

class Controller < Sinatra::Base

  use Rack::Auth::Basic, "Restricted Area" do |username, password|
    username == 'test' and password == 'test'
  end

  get '/' do
    @status = "Not Known"
    erb :index, :layout => false
  end

  post '/' do
    GarageOpener.toogle
    redirect '/'
  end

end

class Api < Sinatra::Base
  enable :sessions
  set :session_secret, 'test'
  set :protection, except: :session_hijacking

  def initialize
    @app = Rack::Builder.new do
      map('/') { run Controller }
    end
  end

  def call(env)
    @app.call(env)
  end
end
