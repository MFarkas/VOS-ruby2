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

ActiveRecord::Schema.define(version: 20140615222019) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: true do |t|
    t.integer  "user_id"
    t.integer  "league_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "disciplines", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  create_table "events", force: true do |t|
    t.integer  "league_id"
    t.datetime "date"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.text     "info"
    t.boolean  "closed",     default: false
  end

  create_table "hows", force: true do |t|
    t.integer  "discipline_id"
    t.integer  "league_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "hows", ["discipline_id"], name: "index_hows_on_discipline_id", using: :btree
  add_index "hows", ["league_id"], name: "index_hows_on_league_id", using: :btree

  create_table "leagues", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.integer  "loc"
    t.string   "slocation"
    t.string   "sdiscipline"
    t.date     "begdate"
    t.date     "expenddate"
    t.integer  "discipline_id"
    t.text     "information"
  end

  create_table "locations", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  create_table "newsposts", force: true do |t|
    t.text     "title"
    t.text     "textcontent"
    t.integer  "league_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "part_in_events", force: true do |t|
    t.integer  "user_id"
    t.integer  "event_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "score"
  end

  create_table "participates", force: true do |t|
    t.integer  "league_id"
    t.integer  "user_id"
    t.integer  "state",      default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin",           default: false
  end

  add_index "users", ["remember_token"], name: "index_users_on_remember_token", using: :btree

  create_table "wheres", force: true do |t|
    t.integer  "location_id"
    t.integer  "league_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "wheres", ["league_id"], name: "index_wheres_on_league_id", using: :btree
  add_index "wheres", ["location_id"], name: "index_wheres_on_location_id", using: :btree

end
