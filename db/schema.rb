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

ActiveRecord::Schema.define(version: 20151018195333) do

  create_table "addresses", force: :cascade do |t|
    t.integer  "person_id"
    t.text     "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "addresses", ["person_id"], name: "index_addresses_on_person_id"

  create_table "customs", force: :cascade do |t|
    t.integer  "person_id"
    t.string   "value"
    t.string   "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "customs", ["person_id"], name: "index_customs_on_person_id"

  create_table "emails", force: :cascade do |t|
    t.integer  "person_id"
    t.string   "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "emails", ["person_id"], name: "index_emails_on_person_id"

  create_table "p_dates", force: :cascade do |t|
    t.integer  "person_id"
    t.date     "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "p_dates", ["person_id"], name: "index_p_dates_on_person_id"

  create_table "people", force: :cascade do |t|
    t.string   "title"
    t.string   "name"
    t.string   "nickname"
    t.string   "image"
    t.string   "company"
    t.text     "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "person_names", force: :cascade do |t|
    t.integer  "person_id"
    t.string   "prefix"
    t.string   "first"
    t.string   "middle"
    t.string   "last"
    t.string   "suffix"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "person_names", ["person_id"], name: "index_person_names_on_person_id"

  create_table "phones", force: :cascade do |t|
    t.integer  "person_id"
    t.string   "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "phones", ["person_id"], name: "index_phones_on_person_id"

  create_table "urls", force: :cascade do |t|
    t.integer  "person_id"
    t.string   "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "urls", ["person_id"], name: "index_urls_on_person_id"

end
