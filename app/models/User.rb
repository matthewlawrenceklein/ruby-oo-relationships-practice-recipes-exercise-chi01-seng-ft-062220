class User
    @@all = []

    attr_accessor  :add_recipe_card
    
    def initialize
        @@all << self
    end

    def self.all
        @@all
    end

    def recipes
        @result = RecipeCard.all.select {|card|  card.user == self}

        @result.map { |result| result.recipe}

    end

    def add_recipe_card(recipe, date, rating)
        
        RecipeCard.new(date, rating, self, recipe)

    end

    def top_three_recipes
        @result = RecipeCard.all.max_by(3) { |recipe| recipe.rating}

        @result 
    end

end