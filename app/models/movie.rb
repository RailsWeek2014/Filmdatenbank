class Movie < ActiveRecord::Base
  mount_uploader :avatar, AvatarUploader
  has_many :users
  has_many :comments
  has_many :ratings

  validates :title, presence: true, :uniqueness => true #Nicht Threadsicher --> In der DB loesen!!
  validates :year, presence: true
end