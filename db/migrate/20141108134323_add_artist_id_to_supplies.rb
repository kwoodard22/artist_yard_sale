class AddArtistIdToSupplies < ActiveRecord::Migration
  def change
    add_column :supplies, :artist_id, :integer
    add_index :supplies, :artist_id
  end
end
