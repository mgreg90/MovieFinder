require 'sinatra'
require './models/siskel.rb'

get '/' do
  erb :index
end

get '/movie' do
  movie = Siskel.new("Lion King")
  "This movie title is #{movie.title}"
end
