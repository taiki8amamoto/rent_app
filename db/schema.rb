# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2023_08_23_145530) do

  create_table "properties", force: :cascade do |t|
    t.string "name", null: false
    t.integer "rent", null: false
    t.string "address", null: false
    t.integer "age", null: false
    t.text "note"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "stations", force: :cascade do |t|
    t.string "line"
    t.string "station"
    t.integer "minute"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "property_id"
    t.index ["property_id"], name: "index_stations_on_property_id"
  end

  add_foreign_key "stations", "properties"
end
