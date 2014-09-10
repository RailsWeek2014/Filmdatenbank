class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable#, :confirmable

  belongs_to :role
  before_create :set_default_role
  has_and_belongs_to_many :movies
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
  def set_default_role
    self.role ||= Role.find_by_name('registered')
  end

  # def user_params
  #   params.require(:user).permit(:email, :username, :password)
  # end
end