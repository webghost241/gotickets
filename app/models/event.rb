class Event < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :reviews, dependent: :destroy
  has_and_belongs_to_many :blogs
  
  validates :title, :description, :location, :date, presence: true
end