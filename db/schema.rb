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

ActiveRecord::Schema.define(version: 20180221092050) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bathrooms", force: :cascade do |t|
    t.string "address"
    t.text "description"
    t.integer "price"
    t.boolean "handicapped"
    t.string "style"
    t.integer "toilet_paper"
    t.boolean "wipes"
    t.boolean "baby"
    t.boolean "bidet"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "plz"
    t.string "city"
    t.string "photo"
    t.string "title"
    t.float "latitude"
    t.float "longitude"
    t.index ["user_id"], name: "index_bathrooms_on_user_id"
  end

  create_table "bookings", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "bathroom_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bathroom_id"], name: "index_bookings_on_bathroom_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "gender"
    t.string "age"
    t.string "photo"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bathrooms", "users"
  add_foreign_key "bookings", "bathrooms"
  add_foreign_key "bookings", "users"
end
