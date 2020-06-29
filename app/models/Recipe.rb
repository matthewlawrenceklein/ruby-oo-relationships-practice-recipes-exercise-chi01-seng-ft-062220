class Recipe
    @@all = []


    attr_accessor :ingredients

    def initialize
        @@all << self
        @ingredients = []
    end

    def self.all
        @@all
    end

    def self.most_popular
        @most_users  = 0
        @most_popular = 0

        RecipeCard.all.each do |recipe_card|
            if recipe_card.user.size > @most_users
                @most_users = recipe_card.users
                @most_popular = recipe_card.recipe
            end
        end    
        @most_popular
    end

    def add_ingredients(array)
        array.each { |ingredient| self << ingredient}
    end

    def users
        @result = RecipeCard.all.select { |card| card.recipe == self }
         
        @result.map { |result| result.user}
            
    end



end