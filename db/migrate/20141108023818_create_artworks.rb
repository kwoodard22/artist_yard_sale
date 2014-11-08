class CreateArtworks < ActiveRecord::Migration
  def change
    create_table :artworks do |t|
      t.string :title
      t.string :description
      t.string :photo
      t.boolean :pickup_only
      t.float :price
      t.string :dimensions
      t.string :color

      t.timestamps
    end
  end
end
