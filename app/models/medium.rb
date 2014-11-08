class Medium < ActiveRecord::Base
  belongs_to :artwork
  belongs_to :supply
  validates :medium, presence: true
end
