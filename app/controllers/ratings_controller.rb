class RatingsController < ApplicationController
  def create
    no_permission_redirect unless user_signed_in?

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
    no_permission_redirect unless user_signed_in? && @rating.user == current_user
    
    @rating = Rating.find(params[:id])

    if @rating.update(rating_params)
      redirect_to @rating.movie
    else
      raise
    end
  end

private

  def no_permission_redirect
    redirect_to '/', alert: "Keine erforderlichen Rechte!"
  end

  def rating_params
    params.require(:rating).permit(:user_id, :movie_id, :rating)
  end
end
