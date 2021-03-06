class Restaurant < ApplicationRecord
  belongs_to :area
  has_many :plans, dependent: :destroy
  has_many :restaurant_reviews, dependent: :destroy
  has_one_attached :photo
  acts_as_favoritable

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
