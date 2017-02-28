class CreateFoods < ActiveRecord::Migration[5.0]
  def change
    create_table :foods do |t|
      t.string :name, null: false
      t.numeric :fat, default: 0
      t.numeric :protein, default: 0
      t.numeric :carbohydrates, default: 0
      t.numeric :calories, default: 0
      t.boolean :vegetarian, default: false
      t.boolean :gluten_free, default: false
      t.numeric :serving_size, default: 0
      t.string :unit_of_measure, default: ""
      t.timestamps
    end
  end
end
