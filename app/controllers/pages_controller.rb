class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  def home
    @movies = Movie.all.order(id: :desc).limit 5
  end
end
