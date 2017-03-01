class Recipe < ApplicationRecord

  has_many :ingredients, dependent: :destroy
  has_many :foods, through: :ingredients

  has_many :favorites, dependent: :destroy
  has_many :users, through: :favorites
end
