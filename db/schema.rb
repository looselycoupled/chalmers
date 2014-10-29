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

ActiveRecord::Schema.define(version: 20141025175235) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assets", force: true do |t|
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "project_id"
    t.integer  "strategy_id"
  end

  add_index "assets", ["project_id"], name: "index_assets_on_project_id", using: :btree
  add_index "assets", ["strategy_id"], name: "index_assets_on_strategy_id", using: :btree

  create_table "assignments", force: true do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "asset_id"
    t.integer  "feature_id"
  end

  add_index "assignments", ["asset_id"], name: "index_assignments_on_asset_id", using: :btree
  add_index "assignments", ["feature_id"], name: "index_assignments_on_feature_id", using: :btree

  create_table "features", force: true do |t|
    t.string   "name"
    t.string   "puppet_include"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "identities", force: true do |t|
    t.string   "uid"
    t.string   "provider"
    t.string   "token"
    t.string   "refresh_token"
    t.string   "refresh_token_created_at"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "user_id"
  end

  add_index "identities", ["user_id"], name: "index_identities_on_user_id", using: :btree

  create_table "projects", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "queue"
    t.string   "state",       default: "inactive"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "servers", force: true do |t|
    t.string   "ami"
    t.string   "instance_id"
    t.string   "hostname"
    t.string   "public_ip_address"
    t.string   "private_ip_address"
    t.string   "private_dns_name"
    t.string   "region"
    t.string   "size"
    t.boolean  "ready"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "asset_id"
  end

  add_index "servers", ["asset_id"], name: "index_servers_on_asset_id", using: :btree

  create_table "strategies", force: true do |t|
    t.string   "code"
    t.integer  "number_of_servers"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "users", force: true do |t|
    t.string   "name",                                null: false
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
    t.integer  "failed_attempts",        default: 0,  null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["unlock_token"], name: "index_users_on_unlock_token", unique: true, using: :btree

end
