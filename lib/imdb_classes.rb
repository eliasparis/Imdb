require 'imdb'

class IMDBSearch
  attr_accessor :movie_title, :array_with_films, :search

	def initialize(movie_title)
		@movie_title = movie_title
		@array_with_films = []
		@search = []
		
	end

  	def search_by_title
    	@search = Imdb::Search.new(@movie_title).movies.map do |movie|
      		{title: movie.title,
       		poster: movie.poster,
       		year: movie.year
      		}
  		end
  	end

  	def get_posters
  		search_by_title
  		x = 0
  			while x <10 do
  				unless @search[x][:poster].nil? 
  				@array_with_films << @search[x]
  				end
  				x +=1
  			end
  		@array_with_films
  	end

    def get_year
      @array_with_films[rand(0...@array_with_films.length)][:year] 
    end

end






