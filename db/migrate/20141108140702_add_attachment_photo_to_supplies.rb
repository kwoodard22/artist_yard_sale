class AddAttachmentPhotoToSupplies < ActiveRecord::Migration
  def self.up
    change_table :supplies do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :supplies, :photo
  end
end
