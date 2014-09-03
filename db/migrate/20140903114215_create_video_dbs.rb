class CreateVideoDbs < ActiveRecord::Migration
  def change
    create_table :video_dbs do |t|
      t.string :title
      t.string :year
      t.string :actor
      t.string :maingenere
      t.string :genere

      t.timestamps
    end
  end
end
