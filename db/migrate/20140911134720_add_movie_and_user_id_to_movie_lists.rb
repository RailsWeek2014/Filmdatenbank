class AddMovieAndUserIdToMovieLists < ActiveRecord::Migration
  def change
    add_column(:movie_lists,[:movie_id, :user_id], :string)
  end
end
