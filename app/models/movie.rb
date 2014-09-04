class Movie < ActiveRecord::Base
  mount_uploader :avatar, AvatarUploader
end