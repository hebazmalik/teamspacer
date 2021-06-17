class Plan < ApplicationRecord
  belongs_to :restaurant
  belongs_to :user
  belongs_to :space
  has_many :invites
  validates :time, presence: true
  validates :date, presence: true
  validates :meeting_point, presence: true
end
