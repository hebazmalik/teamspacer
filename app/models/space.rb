class Space < ApplicationRecord
  belongs_to :area
  has_many :plans
  has_many :amenities
end
