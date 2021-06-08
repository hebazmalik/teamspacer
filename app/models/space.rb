class Space < ApplicationRecord
  belongs_to :area
  has_many :plans
  has_many :amenities
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
