class Food < ApplicationRecord
  has_many :users
  has_many :users, through: :suppys
  
  has_many :ingredients
  has_many :recipes, through: :ingredients

end
