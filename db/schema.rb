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

ActiveRecord::Schema.define(version: 20170315223356) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "authors", force: :cascade do |t|
    t.string   "first_name"
    t.string   "second_name"
    t.text     "description"
    t.boolean  "is_active"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "books", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.decimal  "price"
    t.boolean  "is_active"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "author_id"
    t.integer  "category_id"
    t.integer  "order_item_id"
    t.integer  "review_id"
    t.index ["author_id"], name: "index_books_on_author_id", using: :btree
    t.index ["category_id"], name: "index_books_on_category_id", using: :btree
    t.index ["order_item_id"], name: "index_books_on_order_item_id", using: :btree
    t.index ["review_id"], name: "index_books_on_review_id", using: :btree
  end

  create_table "cards", force: :cascade do |t|
    t.string   "number"
    t.string   "name"
    t.string   "mm"
    t.string   "yy"
    t.string   "cvv"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.index ["user_id"], name: "index_cards_on_user_id", using: :btree
  end

  create_table "categories", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.boolean  "is_active"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "order_items", force: :cascade do |t|
    t.decimal  "price"
    t.decimal  "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "order_id"
    t.index ["order_id"], name: "index_order_items_on_order_id", using: :btree
  end

  create_table "orders", force: :cascade do |t|
    t.string   "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal  "total"
    t.integer  "user_id"
    t.index ["user_id"], name: "index_orders_on_user_id", using: :btree
  end

  create_table "reviews", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.datetime "date"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "user_id"
    t.index ["user_id"], name: "index_reviews_on_user_id", using: :btree
  end

  create_table "user_adresses", force: :cascade do |t|
    t.string   "adress"
    t.string   "city"
    t.string   "zip"
    t.boolean  "is_active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.index ["user_id"], name: "index_user_adresses_on_user_id", using: :btree
  end

  create_table "user_phones", force: :cascade do |t|
    t.string   "phone"
    t.boolean  "is_active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.index ["user_id"], name: "index_user_phones_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password"
    t.string   "confirmation"
    t.boolean  "is_admin"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_foreign_key "books", "authors"
  add_foreign_key "books", "categories"
  add_foreign_key "books", "order_items"
  add_foreign_key "books", "reviews"
  add_foreign_key "cards", "users"
  add_foreign_key "order_items", "orders"
  add_foreign_key "orders", "users"
  add_foreign_key "reviews", "users"
  add_foreign_key "user_adresses", "users"
  add_foreign_key "user_phones", "users"
end
