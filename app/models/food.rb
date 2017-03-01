class Food < ApplicationRecord
  has_many :supplies, dependent: :destroy
  has_many :users, through: :supplies

  has_many :ingredients, dependent: :destroy
  has_many :recipes, through: :ingredients

end
