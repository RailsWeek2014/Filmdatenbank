require 'carrierwave/processing/rmagick'

class MoviesController < ApplicationController

  def new
    redirect_to '/' unless user_signed_in? && current_user.is_moderator?
    @movie= Movie.new
  end


  def show
    @movie = Movie.find(params[:id])
    @rating = @movie.ratings.find_by(user_id: current_user) || Rating.new(movie: @movie)
  end

  def edit
    redirect_to '/' unless user_signed_in? && current_user.is_moderator?
    @movie = Movie.find(params[:id])
  end

  def search

  end

  def create
    redirect_to '/' unless user_signed_in? && current_user.is_moderator?
    @movie = Movie.new(movie_params)
    
    if @movie.save
      redirect_to @movie
    else
      render action: 'new'
    end
  end

  def update
    @movie = Movie.find(params[:id])
    if @movie.update_attributes(movie_params)
      redirect_to movies_path
    else
    render action: "edit"
    end
  end
  
  def index
    @q = Movie.search(params[:q])
    @q.sorts = 'title ASC'
    @movies = @q.result
  end

  private
    def movie_params
      params.require(:movie).permit(:title, :year, :actor, :m_genre, :genre, :avatar, :remote_avatar_url)
    end
end
