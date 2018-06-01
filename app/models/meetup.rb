class Meetup < ApplicationRecord
  has_many :user_meetups
  has_many :users, through: :user_meetups
  has_many :comments
  has_many :commenters, through: :comments, :source => :user
  validates :category, presence: true

  validates :name, presence: true, uniqueness: true
  validates :location, presence: true
  validates :time, presence: true
  validates :description, presence: true
  validates :category, presence: true


  def self.search(term)
    Meetup.all.select do |meetup|
      meetup.category.downcase.include? term.downcase
    end
  end
end
