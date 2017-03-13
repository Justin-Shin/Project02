class Supply < ApplicationRecord
  # Good join name. Other possible names are Fridge and Pantry since those are a
  # part of your app's UI
  belongs_to :user
  belongs_to :food
end
