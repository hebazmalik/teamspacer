class RestaurantReview < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant
  validates :content, presence: :true
  validates :rating, presence: :true
end
