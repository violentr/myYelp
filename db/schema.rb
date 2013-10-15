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

ActiveRecord::Schema.define(version: 20131014154044) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "images", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "restaurant_id"
    t.string   "url"
  end

  add_index "images", ["restaurant_id"], name: "index_images_on_restaurant_id", using: :btree

  create_table "restaurants", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "description"
    t.string   "name"
  end

  create_table "reviews", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "restaurant_id"
  end

  add_index "reviews", ["restaurant_id"], name: "index_reviews_on_restaurant_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "username",   limit: 10
    t.string   "first_name", limit: 25
    t.string   "last_name",  limit: 50
    t.string   "email",                 default: "", null: false
    t.string   "password",   limit: 20
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
