class Space < ApplicationRecord
  belongs_to :area
  has_many :plans
  has_many :amenities
  has_one_attached :photo

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  include PgSearch::Model
  pg_search_scope :search_by_space,
    against: [:name, :location],
    using: {
      tsearch: { prefix: true }
    }
end
