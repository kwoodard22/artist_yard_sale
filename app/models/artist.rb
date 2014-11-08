class Artist < ActiveRecord::Base
  has_many :artworks
  has_many :supplies
end
