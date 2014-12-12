require 'sinatra'
require 'sinatra/reloader'

get '/' do
	erb :index
end

post '/multiple' do
  @num = params[:num]
  erb :index
end