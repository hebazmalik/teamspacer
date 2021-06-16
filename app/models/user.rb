class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :plans, dependent: :destroy
  has_many :invites, dependent: :destroy
  has_many :space_reviews, dependent: :destroy
  has_many :restaurant_reviews, dependent: :destroy
  has_one_attached :photo
  acts_as_favoritor
end
