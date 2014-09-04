class Movie < ActiveRecord::Base
  mount_uploader :avatar, AvatarUploader

  validates :title, presence: true
end