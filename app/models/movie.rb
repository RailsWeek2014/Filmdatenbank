class Movie < ActiveRecord::Base
  mount_uploader :avatar, AvatarUploader

  validates :title, presence: true, :uniqueness => true #Nicht Threadsicher --> In der DB loesen!!
  validates :year, presence: true
end