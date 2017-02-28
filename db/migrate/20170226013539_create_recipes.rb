class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.text :instructions
      t.string :img_url
      t.numeric :servings, default:1
      t.numeric :total_calories, default:0
      t.numeric :total_fat, default:0
      t.numeric :total_protein, default:0
      t.numeric :total_carbohydrates, default:0
      t.boolean :vegetarian, default:false
      t.boolean :gluten_free, default:false
      t.timestamps
    end
  end
end
