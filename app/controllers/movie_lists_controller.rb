class MovieListsController < ApplicationController

   def create
    @movie_list = Rating.new(movie_list_params)
    @movie_list.movie = Movie.find(params[:movie_id])
    # @movie_list.user = current_user
    @movie_list.user_id = 1

    if @movie_list.save
      redirect_to @movie_list.movie
    else
      raise
    end
  end

  def update
    @movie_list = Rating.find(params[:id])

    if @movie_list.update(movie_list_params)
      redirect_to @movie_list.movie
    else
      raise
    end
  end

private

  def movie_list_params
    params.require(:movie_list).permit(:user_id, :movie_id, :value)
  end
end
