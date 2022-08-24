# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_08_22_152902) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "hstore"
  enable_extension "plpgsql"

  create_table "bookclubs", force: :cascade do |t|
    t.string "name"
    t.json "books", default: [], array: true
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "clubusers", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "bookclub_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["bookclub_id"], name: "index_clubusers_on_bookclub_id"
    t.index ["user_id"], name: "index_clubusers_on_user_id"
  end

  create_table "reactions", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "review_id", null: false
    t.string "emoji"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["review_id"], name: "index_reactions_on_review_id"
    t.index ["user_id"], name: "index_reactions_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.integer "rating"
    t.string "date"
    t.string "text"
    t.string "book_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "shelves", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "name"
    t.json "books", default: [], array: true
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_shelves_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "first_name"
    t.string "last_name"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "clubusers", "bookclubs"
  add_foreign_key "clubusers", "users"
  add_foreign_key "reactions", "reviews"
  add_foreign_key "reactions", "users"
  add_foreign_key "reviews", "users"
  add_foreign_key "shelves", "users"
end
