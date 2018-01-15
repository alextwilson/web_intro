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

get '/cat' do
  @sampler = ["friend", "amigo"].sample
  erb(:index)
end
