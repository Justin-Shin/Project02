class CreateSupplies < ActiveRecord::Migration[5.0]
  def change
    create_table :supplies do |t|

      t.timestamps
    end
  end
end
