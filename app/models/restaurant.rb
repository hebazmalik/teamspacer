class Restaurant < ApplicationRecord
  belongs_to :area
  has_many :plans
end
