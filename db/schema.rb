# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_04_15_060539) do

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.boolean "active"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.boolean "active"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "person_representation_workshops", force: :cascade do |t|
    t.string "representation_name"
    t.string "representation_last_name"
    t.string "representation_identification"
    t.string "representation_birthday"
    t.string "representation_telephone"
    t.integer "city_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["city_id"], name: "index_person_representation_workshops_on_city_id"
  end

  create_table "workshops", force: :cascade do |t|
    t.string "name"
    t.boolean "active"
    t.integer "city_id", null: false
    t.integer "location_id", null: false
    t.integer "person_representation_workshop_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["city_id"], name: "index_workshops_on_city_id"
    t.index ["location_id"], name: "index_workshops_on_location_id"
    t.index ["person_representation_workshop_id"], name: "index_workshops_on_person_representation_workshop_id"
  end

  add_foreign_key "person_representation_workshops", "cities"
  add_foreign_key "workshops", "cities"
  add_foreign_key "workshops", "locations"
  add_foreign_key "workshops", "person_representation_workshops"
end
