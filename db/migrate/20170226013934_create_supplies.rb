class CreateSupplies < ActiveRecord::Migration[5.0]
  def change
    create_table :supplies do |t|
      t.integer :amount
      t.string :unit_of_measure
      t.references :user, index: true, foreign_key: true
      t.references :food, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
