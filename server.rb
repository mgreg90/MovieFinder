require 'sinatra'
require './models/siskel.rb'

get '/' do
  title = params[:title]
  @movie = Siskel.new(title)
  params.to_s
  erb :index
end

get '/movie' do
  @movie = Siskel.new("Lion King")
  erb :index
end
