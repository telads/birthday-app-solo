require 'sinatra'

class Birthday < Sinatra::Base
end


get '/' do
  erb :index
end