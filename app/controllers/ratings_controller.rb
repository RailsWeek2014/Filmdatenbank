class RatingsController < ApplicationController
  def create
    @rating = Rating.new(rating_params)
    @rating.movie = Movie.find(params[:movie_id])
    @rating.user = current_user

    if @rating.save
      redirect_to @rating.movie
    else
      raise
    end
  end

  def update
    @rating = Rating.find(params[:id])

    if @rating.update(rating_params)
      redirect_to @rating.movie
    else
      raise
    end
  end

private

  def rating_params
    params.require(:rating).permit(:user_id, :movie_id, :rating)
  end
end
