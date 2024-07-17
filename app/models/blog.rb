class Blog < ApplicationRecord
  has_and_belongs_to_many :events
  validates :title, presence: true
  validates :content, presence: true
end