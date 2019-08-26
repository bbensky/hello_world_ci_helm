require 'sinatra'

set :bind, '0.0.0.0'
set :port, 80

get '/' do
  "Hello World!"
end

get '/cleveland' do
  "Hello Cleveland!"
end

get '/please' do
  "Hello Please!"
end

get '/morethanworld' do
  "Hello Universe!"
end

not_found do 
  "You did something wrong."
end