require_relative '../config/environment.rb'




r1 = Recipe.new("Cake")

rc1 = RecipeCard.new(r1, 03/16/2020, 5, "Taylor")

ri1 = RecipeIngredient.new("flour", r1)

binding.pry
puts "Hello"


