require 'sinatra/base'

class Birthday < Sinatra::Base



  get '/' do
    erb :index
  end

  post '/user-details' do 
    @name = params[:name]
    @birthday = params[:birthday]
    erb :user_details
  end



end

