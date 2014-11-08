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

ActiveRecord::Schema.define(version: 20141108024141) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "artists", force: true do |t|
    t.string   "username"
    t.string   "name"
    t.string   "address"
    t.string   "bio"
    t.string   "photo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "artworks", force: true do |t|
    t.string   "title"
    t.string   "description"
    t.string   "photo"
    t.boolean  "pickup_only"
    t.float    "price"
    t.string   "dimensions"
    t.string   "color"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "media", force: true do |t|
    t.string   "type"
    t.integer  "artwork_id"
    t.integer  "supply_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "media", ["artwork_id"], name: "index_media_on_artwork_id", using: :btree
  add_index "media", ["supply_id"], name: "index_media_on_supply_id", using: :btree

  create_table "supplies", force: true do |t|
    t.string   "title"
    t.string   "color"
    t.float    "price"
    t.string   "description"
    t.string   "condition"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
