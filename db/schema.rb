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

ActiveRecord::Schema.define(version: 20140614171407) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: true do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "admin_users", force: true do |t|
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

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "cities", force: true do |t|
    t.string  "name"
    t.integer "country_id"
  end

  create_table "countries", force: true do |t|
    t.string "name"
  end

  create_table "facilities", force: true do |t|
    t.string   "facility_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "facilities_hostels", id: false, force: true do |t|
    t.integer "hostel_id"
    t.integer "facility_id"
  end

  add_index "facilities_hostels", ["facility_id", "hostel_id"], name: "index_facilities_hostels_on_facility_id_and_hostel_id", using: :btree

  create_table "hostels", force: true do |t|
    t.string   "name_of_hostel"
    t.integer  "city_id"
    t.string   "location"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "number_types", force: true do |t|
    t.integer "number"
  end

  create_table "room_categories", force: true do |t|
    t.string   "room_setting"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "room_in_hostels", force: true do |t|
    t.integer  "hostel_id"
    t.integer  "number_type_id"
    t.integer  "beds_remaining"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "price"
  end

  create_table "room_types", force: true do |t|
    t.integer  "number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students", force: true do |t|
    t.string   "firstName"
    t.string   "lastname"
    t.string   "username"
    t.string   "email"
    t.string   "contact"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_pashashes", force: true do |t|
    t.integer "student_id"
    t.string  "encrypted_password"
    t.string  "salt"
  end

end
