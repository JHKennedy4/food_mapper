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

ActiveRecord::Schema.define(version: 20150404222950) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "food_availabilities", force: :cascade do |t|
    t.integer  "report_id"
    t.integer  "user_id"
    t.integer  "food_type_id"
    t.string   "brand"
    t.decimal  "price",          precision: 8, scale: 2
    t.integer  "actual_unit_id"
    t.decimal  "quantity"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.boolean  "sale"
    t.boolean  "unavailable"
  end

  add_index "food_availabilities", ["actual_unit_id"], name: "index_food_availabilities_on_actual_unit_id", using: :btree
  add_index "food_availabilities", ["food_type_id"], name: "index_food_availabilities_on_food_type_id", using: :btree
  add_index "food_availabilities", ["report_id"], name: "index_food_availabilities_on_report_id", using: :btree
  add_index "food_availabilities", ["user_id"], name: "index_food_availabilities_on_user_id", using: :btree

  create_table "food_categories", force: :cascade do |t|
    t.string   "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "foods", force: :cascade do |t|
    t.integer  "food_category_id"
    t.string   "food"
    t.string   "desired_unit"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "foods", ["food_category_id"], name: "index_foods_on_food_category_id", using: :btree

  create_table "reports", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "store_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "store_type_id"
  end

  add_index "reports", ["store_id"], name: "index_reports_on_store_id", using: :btree
  add_index "reports", ["user_id"], name: "index_reports_on_user_id", using: :btree

  create_table "store_types", force: :cascade do |t|
    t.string   "store_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stores", force: :cascade do |t|
    t.string   "name"
    t.decimal  "latitude",     precision: 9, scale: 6
    t.decimal  "longitude",    precision: 9, scale: 6
    t.string   "address1"
    t.string   "address2"
    t.integer  "zip_code"
    t.integer  "zip_extended"
    t.string   "city"
    t.string   "county"
    t.string   "state"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  create_table "units", force: :cascade do |t|
    t.string   "unit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "food_availabilities", "foods", column: "food_type_id"
  add_foreign_key "food_availabilities", "reports"
  add_foreign_key "food_availabilities", "units", column: "actual_unit_id"
  add_foreign_key "food_availabilities", "users"
  add_foreign_key "foods", "food_categories"
  add_foreign_key "reports", "stores"
  add_foreign_key "reports", "users"
end
