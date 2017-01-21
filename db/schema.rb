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

ActiveRecord::Schema.define(version: 20170120120617) do

  create_table "avantages", force: :cascade do |t|
    t.string   "icon"
    t.text     "title"
    t.text     "description"
    t.integer  "Item_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["Item_id"], name: "index_avantages_on_Item_id"
  end

  create_table "icons", force: :cascade do |t|
    t.string   "icon"
    t.integer  "Item_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Item_id"], name: "index_icons_on_Item_id"
  end

  create_table "items", force: :cascade do |t|
    t.string   "image"
    t.string   "name"
    t.integer  "articulus"
    t.integer  "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
