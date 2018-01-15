require 'sinatra'

get '/' do
  "hello!"
end

get '/secret' do
  "shh!"
end
get '/shout' do
  "WHAT?"
end

get '/random-cat' do
  @name = ["friend", "amigo"].sample
  erb(:index)
end

get '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end
