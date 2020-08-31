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

    # return all of the ingredients in this recipe  
    def ingredients
        RecipeIngredient.all.select {|recipe_ingredient| recipe_ingreident.recipe == self}.map {|recipe| recipe.ingredient}
    end

    #return all of the `Ingredients` in this recipe that are allergens for `User`s in our system
    def allergens
        ingredients.select do |ingredient|
            # Make an array that returns all the allergens in the recipe from the ingredient instance method
            # Return an array 
            Allergy.all.map {|allergy| allergy.ingredient}
        end
    end

    # Take an array of ingredient intances as an argument
    # Associate each of those ingredients with this recipe (ingredient, self <- aka this recipe)    
    def add_ingredients(ingredients)
        Ingredient.each{|ingredient| RecipeIngredient.new(ingredient, self)}
    end


end