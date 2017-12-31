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

ActiveRecord::Schema.define(version: 20171231054145) do

  create_table "attris", force: :cascade do |t|
    t.integer "attri_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "nps", force: :cascade do |t|
    t.integer "servant_id"
    t.string "name"
    t.string "explain"
    t.integer "d_pattern"
    t.string "detail"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "s_classes", force: :cascade do |t|
    t.integer "class_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
  end

  create_table "skills", force: :cascade do |t|
    t.integer "servant_id"
    t.string "name"
    t.string "explain"
    t.integer "d_pattern"
    t.string "detail"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
