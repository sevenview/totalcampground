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

ActiveRecord::Schema.define(version: 20150514015309) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "campers", force: true do |t|
    t.string   "last_name"
    t.string   "first_name"
    t.string   "address"
    t.string   "city"
    t.string   "province"
    t.string   "postal_code"
    t.string   "phone"
    t.string   "mobile"
    t.string   "email"
    t.string   "country"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "active",      default: true
  end

  create_table "lots", force: true do |t|
    t.integer  "number"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "street_id"
    t.string   "division"
  end

  add_index "lots", ["street_id"], name: "index_lots_on_street_id", using: :btree

  create_table "reservations", force: true do |t|
    t.date     "start_date"
    t.date     "end_date"
    t.text     "notes"
    t.boolean  "checked_in",                   default: false
    t.integer  "adults"
    t.integer  "children"
    t.integer  "pets"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "camper_id"
    t.integer  "lot_id"
    t.integer  "security_card_number"
    t.string   "encrypted_credit_card_number"
    t.integer  "credit_card_expiry_month"
    t.integer  "credit_card_expiry_year"
    t.string   "credit_card_type"
    t.integer  "rv_type_id"
    t.boolean  "active",                       default: true
    t.boolean  "seasonal",                     default: false
  end

  add_index "reservations", ["camper_id"], name: "index_reservations_on_camper_id", using: :btree
  add_index "reservations", ["lot_id"], name: "index_reservations_on_lot_id", using: :btree
  add_index "reservations", ["rv_type_id"], name: "index_reservations_on_rv_type_id", using: :btree

  create_table "rv_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "streets", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
