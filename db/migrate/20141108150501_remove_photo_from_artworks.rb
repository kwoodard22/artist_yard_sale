class RemovePhotoFromArtworks < ActiveRecord::Migration
  def change
    remove_column :artworks, :photo, :string
  end
end
