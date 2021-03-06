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

ActiveRecord::Schema.define(version: 20141118225641) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "experience_points", force: true do |t|
    t.integer  "user_id"
    t.integer  "skill_id"
    t.integer  "points"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "experience_points", ["skill_id"], name: "index_experience_points_on_skill_id", using: :btree
  add_index "experience_points", ["user_id"], name: "index_experience_points_on_user_id", using: :btree

  create_table "parties", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "quests", force: true do |t|
    t.integer  "skill_id"
    t.string   "name"
    t.text     "description"
    t.integer  "experience_points"
    t.string   "link"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "icon_url"
    t.integer  "current_experience_points"
  end

  add_index "quests", ["skill_id"], name: "index_quests_on_skill_id", using: :btree

  create_table "skills", force: true do |t|
    t.string   "name"
    t.string   "icon_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_parties", force: true do |t|
    t.integer  "user_id"
    t.integer  "party_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "user_parties", ["party_id"], name: "index_user_parties_on_party_id", using: :btree
  add_index "user_parties", ["user_id"], name: "index_user_parties_on_user_id", using: :btree

  create_table "user_quests", force: true do |t|
    t.integer  "user_id"
    t.integer  "quest_id"
    t.boolean  "complete",   default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "user_quests", ["quest_id"], name: "index_user_quests_on_quest_id", using: :btree
  add_index "user_quests", ["user_id"], name: "index_user_quests_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "username",                            null: false
    t.integer  "level",                  default: 1
    t.integer  "experience_points",      default: 0
    t.string   "icon_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "votes", force: true do |t|
    t.integer  "votable_id"
    t.string   "votable_type"
    t.integer  "voter_id"
    t.string   "voter_type"
    t.boolean  "vote_flag"
    t.string   "vote_scope"
    t.integer  "vote_weight"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "votes", ["votable_id", "votable_type", "vote_scope"], name: "index_votes_on_votable_id_and_votable_type_and_vote_scope", using: :btree
  add_index "votes", ["voter_id", "voter_type", "vote_scope"], name: "index_votes_on_voter_id_and_voter_type_and_vote_scope", using: :btree

end
