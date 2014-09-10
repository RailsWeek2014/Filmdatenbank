class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :rating, default: 0
      t.references :user, index: true
      t.references :movie, index: true

      t.timestamps
    end
    add_index :ratings, [:user_id, :movie_id], unique: true
  end
end
