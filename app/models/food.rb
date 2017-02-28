class Food < ApplicationRecord
  has_many :supplies
  has_many :users, through: :supplies

  has_many :ingredients
  has_many :recipes, through: :ingredients

end
