require 'sinatra'
require 'shotgun'

configure do
  enable :sessions
  set :session_secret, "my_secret"
end

get '/' do
  "hello!"
end

get '/cat' do
  "<div style='border: 3px dashed red'>
     <img src='http://bit.ly/1eze8aE'>
   </div>"
end