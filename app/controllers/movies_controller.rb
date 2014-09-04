class MoviesController < ApplicationController

  def new
    @movie= Movie.new
  end


  def show
    @movie = Movie.find(params[:id])
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def search

  end

  def create
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
    @movies = Movie.all
  end

  private
    def movie_params
      params.require(:movie).permit(:title, :year, :actor, :m_genre, :genre)
    end
end
