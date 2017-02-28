class CreateIngredients < ActiveRecord::Migration[5.0]
  def change
    create_table :ingredients do |t|
      t.integer :amount
      t.string :unit_of_measure
      t.references :recipe, index: true, foreign_key: true
      t.references :food, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
