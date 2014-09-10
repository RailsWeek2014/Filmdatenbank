class Movie < ActiveRecord::Base
  mount_uploader :avatar, AvatarUploader
  has_and_belongs_to_many :users
  has_many :comments
  has_many :commentators, through: :comments, source: :user
  has_many :ratings
  has_many :raters, through: :ratings, source: :user

  validates :title, presence: true, :uniqueness => true #Nicht Threadsicher --> In der DB loesen!!
  validates :year, presence: true

  def average_rating
    sum = 0

    ratings.each do |r|
      sum += r.rating
    end
    
    ratings.empty? ? 0.0 : sum.to_f / ratings.size
  end
end