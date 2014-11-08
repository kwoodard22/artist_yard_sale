class Artist < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  validates_attachment_content_type :photo, :content_type => { :content_type => ["image/jpg", "image/jpeg", "image/gif", "image/png"] }
  validates_with AttachmentSizeValidator, :attributes => :photo, :less_than => 1.megabytes
end
