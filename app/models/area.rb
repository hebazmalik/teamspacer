class Area < ApplicationRecord
  has_many :spaces, dependent: :destroy
  has_many :restaurants, dependent: :destroy
end
