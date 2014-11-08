class CreateSupplies < ActiveRecord::Migration
  def change
    create_table :supplies do |t|
      t.string :title
      t.string :color
      t.float :price
      t.string :description
      t.string :condition

      t.timestamps
    end
  end
end
