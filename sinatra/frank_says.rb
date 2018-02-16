require 'sinatra'
set :bind, '0.0.0.0'
# set :port, 3000

get '/frank-says' do
  'Put this in your pipe & smoke it!'
end