require 'sinatra'
require 'sinatra/reloader'
set :bind, '0.0.0.0'

get '/' do
  "The SECRET NUMBER is " + rand(1...100).to_s
end