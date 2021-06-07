class Area < ApplicationRecord
  has_many :spaces
  has_many :restaurants
end
