require 'sinatra/base'
require './lib/birthday'

class Birthday < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/user-details' do
    @name = params[:name]
    @date = params[:date]
    @month = params[:month]
    birthday_card = Birthday_Card.new
    @greeting = birthday_card.birthday_greeting(@date, @month)
    @month_name = birthday_card.convert_month(params[:month].to_i)
    erb :user_details
  end
end
