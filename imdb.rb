require 'sinatra'
require 'sinatra/reloader' if development?
require 'imdb'
require_relative 'lib/imdb_classes'

get '/' do 
	erb :index
end

post '/film_name' do
	@search = IMDBSearch.new(params[:the_film])
	@poster = @search.get_posters
	@quiz_year = @search.get_year
	erb :filmname
end





