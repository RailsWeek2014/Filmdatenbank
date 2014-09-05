class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :rating
      t.references :user, index: true
      t.references :movie, index: true

      t.timestamps
    end
  end
end
