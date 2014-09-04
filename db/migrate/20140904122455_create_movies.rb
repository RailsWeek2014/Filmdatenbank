class CreateMovies < ActiveRecord::Migration
  def change
    create_table "movies", force: true do |t|
    t.string   "title"
    t.string   "year"
    t.string   "actor"
    t.string   "m_genre"
    t.string   "genre"
    t.datetime "created_at"
    t.datetime "updated_at"
    end
  end
end
