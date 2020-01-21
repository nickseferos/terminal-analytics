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

ActiveRecord::Schema.define(version: 2020_01_21_200945) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "city_ports", force: :cascade do |t|
    t.string "name"
    t.bigint "state_province_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["state_province_id"], name: "index_city_ports_on_state_province_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "operators", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "state_provinces", force: :cascade do |t|
    t.string "name"
    t.bigint "country_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_state_provinces_on_country_id"
  end

  create_table "steamship_lines", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "terminals", force: :cascade do |t|
    t.bigint "city_port_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "operator_id"
    t.index ["city_port_id"], name: "index_terminals_on_city_port_id"
    t.index ["operator_id"], name: "index_terminals_on_operator_id"
  end

  create_table "vessels", force: :cascade do |t|
    t.string "name"
    t.bigint "steamship_line_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["steamship_line_id"], name: "index_vessels_on_steamship_line_id"
  end

  add_foreign_key "city_ports", "state_provinces"
  add_foreign_key "state_provinces", "countries"
  add_foreign_key "terminals", "city_ports"
  add_foreign_key "terminals", "operators"
  add_foreign_key "vessels", "steamship_lines"
end
