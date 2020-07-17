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

ActiveRecord::Schema.define(version: 2020_07_17_045146) do

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "client_plan_plan_tags", force: :cascade do |t|
    t.integer "client_plan_id"
    t.integer "plan_tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "client_plans", force: :cascade do |t|
    t.integer "item_id"
    t.integer "client_id"
    t.string "plan_name"
    t.text "plan_catch"
    t.text "plan_text"
    t.integer "count"
    t.integer "meal_item_id"
    t.integer "cake_item_id"
    t.integer "flower_item_id"
    t.integer "dress_item_id"
    t.integer "memory_item_id"
    t.integer "base_pack_item_id"
    t.integer "total_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clients", force: :cascade do |t|
    t.integer "plan_id"
    t.string "catch"
    t.string "name"
    t.text "introduction"
    t.string "client1_image_id"
    t.string "client2_image_id"
    t.string "client3_image_id"
    t.string "phone_number"
    t.string "email"
    t.text "homepage_url"
    t.string "acces"
    t.string "capacity"
    t.string "regular_holiday"
    t.string "business_hours"
    t.string "wedding_time_zone"
    t.text "other"
    t.string "office_name"
    t.string "staff_name"
    t.string "staff_name_kana"
    t.string "staff_email"
    t.string "staff_phone_number"
    t.boolean "is_active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "family_name"
    t.string "first_name"
    t.string "kana_family_name"
    t.string "kana_first_name"
    t.string "phone_number"
    t.index ["email"], name: "index_customers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_customers_on_reset_password_token", unique: true
  end

  create_table "item_categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.integer "item_category_id"
    t.string "name"
    t.text "description"
    t.integer "unit_price"
    t.string "item_image_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "client_plan_id"
    t.integer "client_id"
    t.index ["client_id"], name: "index_items_on_client_id"
    t.index ["client_plan_id"], name: "index_items_on_client_plan_id"
  end

  create_table "order_items", force: :cascade do |t|
    t.integer "order_plans_id"
    t.integer "item_id"
    t.integer "quantity"
    t.integer "purchase_unit_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_plans", force: :cascade do |t|
    t.integer "customer_id"
    t.integer "count"
    t.integer "meal_item_id"
    t.integer "cake_item_id"
    t.integer "flower_item_id"
    t.integer "dress_item_id"
    t.integer "memory_item_id"
    t.integer "base_pack_item_id"
    t.integer "total_price"
    t.integer "client_plan_id"
    t.string "client_plan_name"
    t.integer "budget"
    t.integer "desired_year"
    t.integer "desired_timing"
    t.integer "desired_day"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "plan_tags", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "tag_image_id"
  end

  create_table "pre_plans", force: :cascade do |t|
    t.integer "customer_id"
    t.integer "item_id"
    t.integer "count"
    t.integer "meal_item_id"
    t.integer "cake_item_id"
    t.integer "flower_item_id"
    t.integer "dress_item_id"
    t.integer "memory_item_id"
    t.integer "base_pack_item_id"
    t.integer "total_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "client_id"
    t.integer "client_plan_id"
    t.index ["client_plan_id"], name: "index_pre_plans_on_client_plan_id"
  end

end
