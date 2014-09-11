class MovieListsController < ApplicationController

   def create
    @movie_list = MovieList.new(movie_list_params)
    @movie_list.where(user_id: '#{current_user.id}', movie_id: '#{@movie}').first_or_create
    
    if @movie_list.save
      redirect_to @movie_list.movie
    else
      raise
    end
  end

  def destroy
    
  end

  private

  def movie_list_params
    params.require(:movie_list).permit(:user_id, :movie_id, :value)
  end
end
