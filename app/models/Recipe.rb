class Recipe
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name

        @@all << self
    end

    def self.all
        @@all
    end

    def self.most_popular
        Recipe.all {|user| user.recipe}
    end

    # return the user instances who have recipe cards with this recipe
    def users
        RecipeCard.all.select {|recipe_card| recipe_card.recipe == self}.map {|recipe_card| recipe_card.user}
    end

    def ingredients
        Ingredient.all.select {|ingredient| ingreident.recipe == self}
    end


end