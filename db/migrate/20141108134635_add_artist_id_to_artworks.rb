class AddArtistIdToArtworks < ActiveRecord::Migration
  def change
    add_column :artworks, :artist_id, :integer
    add_index :artworks, :artist_id
  end
end
