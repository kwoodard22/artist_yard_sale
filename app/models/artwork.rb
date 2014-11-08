class Artwork < ActiveRecord::Base
  belongs_to :artist
  has_one :medium
  validates :title, presence: true
  validates :photo, presence: true
  validates :medium, presence: true
  validates :price, presence: true
end
