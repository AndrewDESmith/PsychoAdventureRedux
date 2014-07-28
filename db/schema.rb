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

ActiveRecord::Schema.define(version: 20140726194416) do

  create_table "scenes", force: true do |t|
    t.date     "date"
    t.time     "time"
    t.string   "location"
    t.text     "story_body"
    t.integer  "parent_scene_id"
    t.boolean  "relevant_clue"
    t.string   "choice"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_scenes", force: true do |t|
    t.integer  "user_id"
    t.integer  "scene_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "tracking"
  end

  create_table "users", force: true do |t|
    t.string   "character_name"
    t.text     "note"
    t.string   "email",                        null: false
    t.string   "crypted_password",             null: false
    t.string   "salt",                         null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_me_token"
    t.datetime "remember_me_token_expires_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["remember_me_token"], name: "index_users_on_remember_me_token"

end
