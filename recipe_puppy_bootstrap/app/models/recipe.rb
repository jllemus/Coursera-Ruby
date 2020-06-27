class Recipe
    include HTTParty
        
    base_uri 'http://www.recipepuppy.com/api'
    format :json

    def self.for (keyword)
        get('', query: {q: keyword })['results']
    end
end
