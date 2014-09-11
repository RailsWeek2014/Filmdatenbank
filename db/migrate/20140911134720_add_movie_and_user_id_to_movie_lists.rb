class AddMovieAndUserIdToMovieLists < ActiveRecord::Migration
  def change
    add_column(:movie_lists, :movie_id, :string)
    add_column(:movie_lists, :user_id, :string)
  end
end
