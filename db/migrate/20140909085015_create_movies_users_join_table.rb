class CreateMoviesUsersJoinTable < ActiveRecord::Migration
  def change
    create_join_table :movies, :users do |t|
      t.index [:movie_id, :user_id], unique: true
      # t.index [:user_id, :movie_id]
    end
  end
end
