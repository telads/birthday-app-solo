require 'sinatra/base'

class Birthday < Sinatra::Base



  get '/' do
    erb :index
  end

  post '/user-details' do 
    @name = params[:name]
    @date = params[:date]
    @month = params[:month]
    erb :user_details
  end



end

