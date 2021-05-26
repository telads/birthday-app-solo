require 'sinatra/base'

class Birthday < Sinatra::Base



  get '/' do
    erb :index
  end

  post '/user-details' do 
    erb :user_details
  end


end