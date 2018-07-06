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

ActiveRecord::Schema.define(version: 20180705130637) do

  create_table "attris", force: :cascade do |t|
    t.integer "attri_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "classskills", force: :cascade do |t|
    t.integer "servant_id"
    t.string "name"
    t.string "explain"
    t.integer "icon_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "npgets", force: :cascade do |t|
    t.integer "servant_id"
    t.decimal "a1", precision: 6, scale: 2
    t.decimal "a2", precision: 6, scale: 2
    t.decimal "a2p", precision: 6, scale: 2
    t.decimal "a3", precision: 6, scale: 2
    t.decimal "a3p", precision: 6, scale: 2
    t.decimal "q1", precision: 6, scale: 2
    t.decimal "q2", precision: 6, scale: 2
    t.decimal "q2p", precision: 6, scale: 2
    t.decimal "q3", precision: 6, scale: 2
    t.decimal "q3p", precision: 6, scale: 2
    t.decimal "ex", precision: 6, scale: 2
    t.decimal "exp", precision: 6, scale: 2
    t.decimal "bp", precision: 6, scale: 2
    t.decimal "np", precision: 6, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "nps", force: :cascade do |t|
    t.integer "servant_id"
    t.string "name"
    t.string "rank"
    t.string "nptype"
    t.string "command"
    t.string "explain1"
    t.string "data11"
    t.string "data12"
    t.string "data13"
    t.string "data14"
    t.string "data15"
    t.string "explain2"
    t.string "data21"
    t.string "data22"
    t.string "data23"
    t.string "data24"
    t.string "data25"
    t.string "explain3"
    t.string "data3"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "Type"
    t.integer "Atk"
  end

  create_table "sclasses", force: :cascade do |t|
    t.integer "class_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "servants", force: :cascade do |t|
    t.integer "servant_id"
    t.integer "rare"
    t.string "name"
    t.integer "class_id"
    t.integer "attri_id"
    t.string "command"
    t.integer "np_get"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "Hp"
    t.integer "Atk"
    t.integer "HitA"
    t.integer "HitB"
    t.integer "HitQ"
    t.integer "HitEX"
    t.integer "HitNP"
  end

  create_table "skills", force: :cascade do |t|
    t.integer "servant_id"
    t.string "name"
    t.integer "ct"
    t.string "explain"
    t.string "d1"
    t.string "d2"
    t.string "d3"
    t.string "d4"
    t.string "d5"
    t.string "d6"
    t.string "d7"
    t.string "d8"
    t.string "d9"
    t.string "d10"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
