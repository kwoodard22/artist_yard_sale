class Artist < ActiveRecord::Base
  has_many :artworks
  has_many :supplies
  validates :username, presence: true
  validates :location, presence: true
end
