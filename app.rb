require 'sinatra/base'

class Birthday < Sinatra::Base



  get '/' do
    erb :index
  end

  post '/user-details' do 
    erb :user_details
    @name = params[:name]
    @birthday = params[:birthday]
  end


end