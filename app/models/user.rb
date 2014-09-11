class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable#, :confirmable
         
  has_many :movies
  has_many :listings, through: :movie_lists, source: :movie
  has_many :comments
  has_many :commentations, through: :comments, source: :movie
  has_many :ratings
  has_many :rates, through: :ratings, source: :movie

  def is_moderator?
    moderator
  end

  def has_rated? movie
    movie.raters.include? self
  end
  
  private
  # def user_params
  #   params.require(:user).permit(:email, :username, :password)
  # end
end