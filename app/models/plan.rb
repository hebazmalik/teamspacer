class Plan < ApplicationRecord
  belongs_to :restaurant
  belongs_to :user
  belongs_to :space
  has_many :invites
end
