class BlogPost < ApplicationRecord
  belongs_to :user
  belongs_to :event
  
  validates :title, :content, presence: true
end