require_relative '../config/environment.rb'

cookies = Recipe.new
beets = Recipe.new
salad = Recipe.new
candybars = Recipe.new
sandwich = Recipe.new


derick = User.new
mork = User.new
jeb = User.new

derick_cookies = RecipeCard.new("10/5/2914", 6.6, derick, cookies)
mork_salad = RecipeCard.new("6/6/6666", 4.2, mork, salad)
derick_salad = RecipeCard.new("6/2/13", 6.7, derick, salad)
derick_candybars = RecipeCard.new("january", 100, derick, candybars)
derick_beets = RecipeCard.new("feb", 70, derick, beets)

mork.add_recipe_card(sandwich, "4/20/240", 2.1)
jeb.add_recipe_card(salad, "october", 7)


# derick.add_recipe_card = card_one



binding.pry
