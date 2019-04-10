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

ActiveRecord::Schema.define(version: 2019_04_10_161612) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "gymsite_users", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "gymsite_id"
    t.date "from_date"
    t.date "thru_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["gymsite_id"], name: "index_gymsite_users_on_gymsite_id"
    t.index ["user_id"], name: "index_gymsite_users_on_user_id"
  end

  create_table "gymsites", force: :cascade do |t|
    t.string "surname"
    t.string "legal_code"
    t.string "description"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "role_users", force: :cascade do |t|
    t.bigint "role_id"
    t.bigint "user_id"
    t.date "from_date"
    t.date "thru_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["role_id"], name: "index_role_users_on_role_id"
    t.index ["user_id"], name: "index_role_users_on_user_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "role_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["role_name"], name: "index_roles_on_role_name", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.string "avatar"
    t.date "birthday"
    t.integer "gender"
    t.date "start_date"
    t.date "thru_date"
    t.boolean "is_active"
    t.integer "level"
    t.text "comments"
    t.string "password_digest"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["username"], name: "index_users_on_username", unique: true
  end

  add_foreign_key "gymsite_users", "gymsites"
  add_foreign_key "gymsite_users", "users"
  add_foreign_key "role_users", "roles"
  add_foreign_key "role_users", "users"
end
