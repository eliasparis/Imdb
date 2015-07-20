require 'rspec'
require_relative 'imdb_classes'


describe FilmSearch do 

	let (:title_searcher) do
		instance_double("IMDBSearcher", :search_by_title => {title: "Funny"})
 	end

  	describe '#regenerate' do
    	it "regenerates a live cell from a live cell if it has 2 neighbours" do
      		cell1 = Cell.new(1, [0,0,0,0,0,0,1,1])
      		expect(cell1.regenerate).to eq(1)
    	end
  	end

end

