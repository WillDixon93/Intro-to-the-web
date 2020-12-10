require 'sinatra'

set :session_secret, 'super secret'

get '/' do
    "Hello! my name is billy"
end

get '/secret' do
    "This is a secret page"
end

get '/random-cat' do
    @name = ["Joe Cole", "West Ham Legend", "Flat Cap Geezer"].sample
    erb :index
end

get '/named-cat' do
    print params
    @name = params[:name]
    erb :index
end