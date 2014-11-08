class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :username
      t.string :name
      t.string :address
      t.string :bio
      t.string :photo

      t.timestamps
    end
  end
end
