class Review < ApplicationRecord
  belongs_to :user
  belongs_to :event
  
  validates :content, :rating, presence: true
  validates :rating, inclusion: { in: 1..5 }
end
