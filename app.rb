require 'sinatra'
require 'shotgun'

configure do
  enable :sessions
  set :session_secret, "my_secret"
end

get '/' do
  "hello!"
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb :index
end

get '/cat-form' do
  erb :cat_form
end