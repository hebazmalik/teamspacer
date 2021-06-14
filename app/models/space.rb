class Space < ApplicationRecord
  belongs_to :area
  has_many :plans, dependent: :destroy
  has_many :amenities
  has_many :space_reviews, dependent: :destroy
  has_one_attached :photo
  acts_as_favoritable

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  include PgSearch::Model
  pg_search_scope :search_by_space,
    against: [:name, :location],
    using: {
      tsearch: { prefix: true }
    }
end
