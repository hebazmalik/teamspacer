class Plan < ApplicationRecord
  belongs_to :restaurant, dependent: :destroy
  belongs_to :user, dependent: :destroy
  belongs_to :space, dependent: :destroy
  has_many :invites
  validates :time, presence: true
  validates :date, presence: true
end
