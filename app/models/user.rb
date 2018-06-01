class User < ApplicationRecord
  has_secure_password

  has_many :user_meetups
  has_many :meetups, through: :user_meetups
  has_many :comments
  has_many :meets, through: :comments, :source => :meetup

  validates :name, presence: true
  validates :age, presence: true
  validates :username, presence: true, uniqueness: true

  def join(meetup)
   self.meetups << meetup
  end


  def leave(meetup)
   self.meetups.delete(meetup)
  end


  def joined?(meetup)
   self.meetups.include?(meetup)
  end


end
