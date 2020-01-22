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

ActiveRecord::Schema.define(version: 2020_01_22_003635) do

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

  create_table "crane_operators", force: :cascade do |t|
    t.string "name"
    t.string "work_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_crane_operators_on_name"
    t.index ["work_number"], name: "index_crane_operators_on_work_number"
  end

  create_table "gangs", force: :cascade do |t|
    t.boolean "flexed"
    t.bigint "shift_id"
    t.integer "top_pick"
    t.integer "utr"
    t.text "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["shift_id"], name: "index_gangs_on_shift_id"
  end

  create_table "jobs", force: :cascade do |t|
    t.bigint "crane_operator_id"
    t.bigint "gang_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["crane_operator_id"], name: "index_jobs_on_crane_operator_id"
    t.index ["gang_id"], name: "index_jobs_on_gang_id"
  end

  create_table "operators", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "port_calls", force: :cascade do |t|
    t.bigint "terminal_id"
    t.bigint "voyage_id"
    t.datetime "eta"
    t.datetime "first_line"
    t.datetime "atd"
    t.datetime "last_line"
    t.datetime "first_container"
    t.datetime "last_contaienr"
    t.datetime "first_reefer"
    t.datetime "last_reefer"
    t.integer "total_discharge"
    t.integer "total_load"
    t.integer "total_rehandle"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "prelim_discharge"
    t.boolean "prelim_load"
    t.boolean "prelim_rehandle"
    t.index ["terminal_id"], name: "index_port_calls_on_terminal_id"
    t.index ["voyage_id"], name: "index_port_calls_on_voyage_id"
  end

  create_table "shifts", force: :cascade do |t|
    t.string "shift_type"
    t.boolean "late_start"
    t.boolean "clean_start"
    t.bigint "port_call_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["port_call_id"], name: "index_shifts_on_port_call_id"
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

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "terminal_id"
    t.string "first_name"
    t.string "last_name"
    t.boolean "approved", default: false, null: false
    t.boolean "admin", default: false, null: false
    t.index ["admin"], name: "index_users_on_admin"
    t.index ["approved"], name: "index_users_on_approved"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["terminal_id"], name: "index_users_on_terminal_id"
  end

  create_table "vessels", force: :cascade do |t|
    t.string "name"
    t.bigint "steamship_line_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "loa"
    t.string "breadth"
    t.string "max_speed"
    t.string "bays"
    t.string "capacity"
    t.index ["steamship_line_id"], name: "index_vessels_on_steamship_line_id"
  end

  create_table "voyages", force: :cascade do |t|
    t.string "number"
    t.bigint "vessel_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["vessel_id"], name: "index_voyages_on_vessel_id"
  end

  add_foreign_key "city_ports", "state_provinces"
  add_foreign_key "gangs", "shifts"
  add_foreign_key "jobs", "crane_operators"
  add_foreign_key "jobs", "gangs"
  add_foreign_key "port_calls", "terminals"
  add_foreign_key "port_calls", "voyages"
  add_foreign_key "shifts", "port_calls"
  add_foreign_key "state_provinces", "countries"
  add_foreign_key "terminals", "city_ports"
  add_foreign_key "terminals", "operators"
  add_foreign_key "users", "terminals"
  add_foreign_key "vessels", "steamship_lines"
  add_foreign_key "voyages", "vessels"
end
