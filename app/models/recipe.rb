class Recipe
	include HTTParty

	base_uri "http://www.food2fork.com/api"
	default_params key: 'baf73a560530a3ae1254c5ebd9e40de8'
	format :json

	def self.for term
		get("/search", query: {q: term})["recipes"]
	end
end
