class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :meetup

  validates :content, presence: true
end
