class Food < ApplicationRecord
  # One cool aspect of your ERDs is the decoupling of Food from specific domains
  # like the fridge and the kitchen. You could add a grocery list.

  # However, that'd require another model. You may find that this is a code smell
  # and there is a concept/technique that would spare you having to create more models.

  # Self-referential joins allow: you to 'alias' a class and use the alias as an association to the class being aliased (self-referential).

  # Section 2.10 of the below:
  # http://guides.rubyonrails.org/v2.3.11/association_basics.html
  # In depth blog post:
  # https://medium.com/@jbmilgrom/active-record-many-to-many-self-join-table-e0992c27c1e#.cfgq714vt
  # GA lesson: https://github.com/ga-wdi-lessons/rails-self-referentials

  # Just some Food for thought. Sorry couldn't resist the pun.

  has_many :supplies, dependent: :destroy
  has_many :users, through: :supplies

  has_many :ingredients, dependent: :destroy
  has_many :recipes, through: :ingredients

end
