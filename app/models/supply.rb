class Supply < ActiveRecord::Base
  belongs_to :artist
  has_one :medium
  validates :medium, presence: true
  validates :price, presence: true
end
