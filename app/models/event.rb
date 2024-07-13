class Event < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :reviews
  
  validates :title, :description, :location, :date, presence: true
end