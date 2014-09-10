# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140910151539) do

  create_table "comments", force: true do |t|
    t.integer  "user_id"
    t.integer  "movie_id"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["movie_id"], name: "index_comments_on_movie_id"
  add_index "comments", ["user_id"], name: "index_comments_on_user_id"

  create_table "movie_lists", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "movies", force: true do |t|
    t.string   "title"
    t.string   "year"
    t.string   "actor"
    t.string   "m_genre"
    t.string   "genre"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar"
  end

  create_table "movies_users", id: false, force: true do |t|
    t.integer "movie_id", null: false
    t.integer "user_id",  null: false
  end

  add_index "movies_users", ["movie_id", "user_id"], name: "index_movies_users_on_movie_id_and_user_id", unique: true

  create_table "ratings", force: true do |t|
    t.integer  "rating",     default: 0
    t.integer  "user_id"
    t.integer  "movie_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ratings", ["movie_id"], name: "index_ratings_on_movie_id"
  add_index "ratings", ["user_id", "movie_id"], name: "index_ratings_on_user_id_and_movie_id", unique: true
  add_index "ratings", ["user_id"], name: "index_ratings_on_user_id"

  create_table "taggings", force: true do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.integer  "tagger_id"
    t.string   "tagger_type"
    t.string   "context",       limit: 128
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id", "taggable_id", "taggable_type", "context", "tagger_id", "tagger_type"], name: "taggings_idx", unique: true
  add_index "taggings", ["taggable_id", "taggable_type", "context"], name: "index_taggings_on_taggable_id_and_taggable_type_and_context"

  create_table "tags", force: true do |t|
    t.string  "name"
    t.integer "taggings_count", default: 0
  end

  add_index "tags", ["name"], name: "index_tags_on_name", unique: true

  create_table "users", force: true do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "username",               default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.boolean  "moderator",              default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
