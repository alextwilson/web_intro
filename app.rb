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

post '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end

get '/cat-form' do
  erb(:cat_form)
end
