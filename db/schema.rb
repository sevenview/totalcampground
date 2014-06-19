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

ActiveRecord::Schema.define(version: 20140619165829) do

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
  end

  create_table "lots", force: true do |t|
    t.string   "name"
    t.string   "number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reservations", force: true do |t|
    t.date     "start_date"
    t.date     "end_date"
    t.text     "notes"
    t.boolean  "checked_in", default: false
    t.integer  "adults"
    t.integer  "children"
    t.integer  "pets"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "camper_id"
    t.integer  "lot_id"
  end

  add_index "reservations", ["camper_id"], name: "index_reservations_on_camper_id", using: :btree
  add_index "reservations", ["lot_id"], name: "index_reservations_on_lot_id", using: :btree

end
