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

ActiveRecord::Schema.define(version: 20160929151254) do

  create_table "termins", force: :cascade do |t|
    t.datetime "behandlungstermin"
    t.string   "behandlungsart"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "physio_id"
    t.integer  "patient_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password_digest"
    t.boolean  "admin",           default: false
    t.boolean  "physio",          default: false
    t.boolean  "patient",         default: false
    t.string   "vorname"
    t.string   "name"
    t.datetime "geburtsdatum"
    t.string   "straße"
    t.string   "hausnummer"
    t.integer  "plz"
    t.string   "ort"
    t.integer  "telefonnummer"
    t.string   "qualifikation"
    t.string   "krankenkasse"
    t.text     "befund"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

end
