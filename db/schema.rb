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

ActiveRecord::Schema.define(version: 20151121103516) do

  create_table "affixes", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "cclasses", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "character_pull_role_refs", force: :cascade do |t|
    t.integer  "pull_role_id"
    t.integer  "character_id"
    t.integer  "leader_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "characters", force: :cascade do |t|
    t.integer  "player_id"
    t.integer  "squad_id"
    t.integer  "leader_id"
    t.string   "name"
    t.integer  "role"
    t.integer  "cclass"
    t.integer  "prefix"
    t.integer  "affix"
    t.integer  "sigil_1"
    t.integer  "sigil_2"
    t.integer  "sigil_3"
    t.integer  "sigil_4"
    t.integer  "toughness"
    t.integer  "ac"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "encounter_character_refs", force: :cascade do |t|
    t.integer  "pull_role_id"
    t.integer  "encounter_id"
    t.integer  "character_id"
    t.integer  "leader_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "encounters", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "leader_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "players", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "name"
    t.integer  "rank"
    t.integer  "rxp"
    t.integer  "squad_id"
    t.boolean  "is_leader"
    t.integer  "player_leader_ref_id"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "players", ["email"], name: "index_players_on_email", unique: true
  add_index "players", ["reset_password_token"], name: "index_players_on_reset_password_token", unique: true

  create_table "prefixes", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "pull_roles", force: :cascade do |t|
    t.integer  "pull_id"
    t.integer  "encounter_id"
    t.integer  "leader_id"
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "pulls", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "encounter_id"
    t.integer  "leader_id"
    t.string   "result"
    t.string   "comments"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "ranks", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "leader_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "leader_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "sigils", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "squads", force: :cascade do |t|
    t.string   "name"
    t.integer  "leader_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
