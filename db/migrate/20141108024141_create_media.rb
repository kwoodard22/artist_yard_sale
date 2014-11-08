class CreateMedia < ActiveRecord::Migration
  def change
    create_table :media do |t|
      t.string :type
      t.belongs_to :artwork, index: true
      t.belongs_to :supply, index: true

      t.timestamps
    end
  end
end
