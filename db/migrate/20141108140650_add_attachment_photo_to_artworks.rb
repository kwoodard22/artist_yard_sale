class AddAttachmentPhotoToArtworks < ActiveRecord::Migration
  def self.up
    change_table :artworks do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :artworks, :photo
  end
end
