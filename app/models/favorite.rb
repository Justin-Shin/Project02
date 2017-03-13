class Favorite < ApplicationRecord
  # You could also call this a RecipeBox or Collection. I don't
  # think those are necessarily better, just food for thought. Join tables are sometimes hard to name, and the temptation to just smash together the 2 models being joined is very real, but UserRecipe would be a bad join name.
  belongs_to :user
  belongs_to :recipe
end
