class MoviesController < ApplicationController

  def new
    @movie= Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    @movie.save
    redirect_to @movie
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def edit

  end

  private
    def movie_params
      params.require(:movie).permit(:title, :year, :actor, :m_genre, :genre)
    end
end
