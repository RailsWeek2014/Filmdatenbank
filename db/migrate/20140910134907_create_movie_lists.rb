class CreateMovieLists < ActiveRecord::Migration
  def change
    create_table :movie_lists do |t|

      t.timestamps
    end
  end
end
