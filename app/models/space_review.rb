class SpaceReview < ApplicationRecord
  belongs_to :space
  belongs_to :user
  validates :content, presence: :true
  validates :rating, presence: :true
end
