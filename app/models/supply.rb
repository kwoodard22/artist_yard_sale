class Supply < ActiveRecord::Base
  belongs_to :artist
  has_one :medium
  has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/
  validates_with AttachmentSizeValidator, :attributes => :photo, :less_than => 1.megabytes
  validates :medium, presence: true
  validates :price, presence: true
end
