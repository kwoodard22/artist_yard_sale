class RemovePhotoFromArtists < ActiveRecord::Migration
  def change
    remove_column :artists, :photo, :string
  end
end
