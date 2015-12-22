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

ActiveRecord::Schema.define(version: 25) do

# Could not dump table "agencies" because of following NoMethodError
#   undefined method `[]' for nil:NilClass

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
  add_index "friendly_id_slugs", ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
  add_index "friendly_id_slugs", ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id"
  add_index "friendly_id_slugs", ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type"

  create_table "microposts", force: :cascade do |t|
    t.string   "author"
    t.string   "email"
    t.text     "review",     limit: 999
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "orders", force: :cascade do |t|
    t.string   "odd"
    t.string   "mark"
    t.date     "order_day"
    t.string   "country",           default: "UA", null: false
    t.date     "tour_day_begin"
    t.date     "tour_day_end"
    t.integer  "night"
    t.date     "aircross_begin"
    t.date     "aircross_end"
    t.string   "airtable"
    t.string   "airclass"
    t.string   "airline"
    t.date     "hotel_begin"
    t.date     "hotel_end"
    t.string   "hotel_name"
    t.integer  "hotel_class"
    t.string   "hotel_city"
    t.string   "hotel_class_room"
    t.string   "hotel_pay"
    t.date     "service_begin"
    t.date     "service_end"
    t.string   "service_name"
    t.date     "medical_begin"
    t.date     "medical_end"
    t.string   "medical_name"
    t.date     "visa_begin"
    t.date     "visa_end"
    t.string   "visa_need"
    t.integer  "agency_id"
    t.integer  "payment_tour"
    t.string   "payment_currency"
    t.integer  "sell_tour"
    t.string   "sell_currency"
    t.integer  "operator"
    t.string   "operator_currency"
    t.integer  "in_total"
    t.string   "total_currency"
    t.integer  "paid"
    t.string   "paid_currency"
    t.integer  "debt"
    t.string   "debt_currency"
    t.integer  "tourist_id",                       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

# Could not dump table "tourists" because of following NoMethodError
#   undefined method `[]' for nil:NilClass

  create_table "users", force: :cascade do |t|
    t.string   "email",                        limit: 255,             null: false
    t.string   "crypted_password",             limit: 255,             null: false
    t.string   "salt",                         limit: 255,             null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "last_login_at"
    t.datetime "last_logout_at"
    t.datetime "last_activity_at"
    t.string   "last_login_from_ip_address",   limit: 255
    t.integer  "failed_logins_count",                      default: 0
    t.datetime "lock_expires_at"
    t.string   "unlock_token",                 limit: 255
    t.string   "username",                     limit: 255
    t.string   "role",                         limit: 255
    t.string   "remember_me_token",            limit: 255
    t.datetime "remember_me_token_expires_at"
  end

  add_index "users", ["email", "username"], name: "index_users_on_email_and_username"
  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["last_logout_at", "last_activity_at"], name: "index_users_on_last_logout_at_and_last_activity_at"
  add_index "users", ["remember_me_token"], name: "index_users_on_remember_me_token"

end
