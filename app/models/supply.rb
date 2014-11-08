class Supply < ActiveRecord::Base
  belongs_to :artist
  has_one :medium
end
