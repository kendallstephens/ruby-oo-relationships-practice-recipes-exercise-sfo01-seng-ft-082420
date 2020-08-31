class User
    attr_accessor :name

    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    # return the array of the User class
    def self.all
        @@all
    end

    # return all the recipes this user has recipe cards for
    def recipes
        recipe_cards.collect{|card| card.recipe}
    end

    # accept a recipe instance as an argument
    # create a new recipe card for this user and the given recipe
    def add_recipe_card(recipe, date, rating)
        RecipeCard.new(recipe, self, date, rating)
    end

    # accept an `Ingredient` instance as an argument
    # create a new `Allergy` instance for this `User` and the given `Ingredient`
    def declare_allergy(ingredient)
        Allergy.new(self, ingredient)
    end

    # return all of the ingredients this user is allergic to
    def allergens
        Allergy.all.select {|allergy| allergy.user == self}
        # not done
    end
    
    # return the top three highest rated recipes for this user
    def top_three_recipes
        
    end

    # return the recipe most recently added to the user's cookbook
    def most_recent_recipe
        recipe_card.last.recipe
    end
end