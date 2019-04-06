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

ActiveRecord::Schema.define(version: 2019_04_06_232454) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "caregivers", force: :cascade do |t|
    t.string "first_name"
    t.string "middle_name"
    t.string "last_name"
    t.date "birthdate"
    t.string "phone1"
    t.string "phone2"
    t.string "email"
    t.string "bio"
    t.string "url"
    t.string "address_number"
    t.string "address_extension"
    t.string "address_line2"
    t.string "address_street"
    t.string "address_city"
    t.string "address_state"
    t.string "address_zip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "documents", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "format"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.integer "patient_id"
    t.string "title"
    t.text "description"
    t.datetime "start_time"
    t.datetime "end_time"
    t.date "start_date"
    t.date "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "goals", force: :cascade do |t|
    t.integer "patient_id"
    t.string "title"
    t.text "description"
    t.date "target_date"
    t.string "status"
    t.integer "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "images", force: :cascade do |t|
    t.string "title"
    t.string "url"
    t.string "format"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "medication_side_effects", force: :cascade do |t|
    t.integer "medication_id"
    t.integer "side_effect_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "medications", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "patients", force: :cascade do |t|
    t.string "first_name"
    t.string "middle_name"
    t.string "last_name"
    t.date "birthdate"
    t.string "phone1"
    t.string "phone2"
    t.string "email"
    t.string "bio"
    t.string "triggers"
    t.text "preferences"
    t.text "diagnosis"
    t.string "url"
    t.string "address_number"
    t.string "address_extension"
    t.string "address_line2"
    t.string "address_street"
    t.string "address_city"
    t.string "address_state"
    t.string "address_zip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "prescriptions", force: :cascade do |t|
    t.text "description"
    t.integer "doctor_id"
    t.integer "medication_id"
    t.date "start_date"
    t.date "end_date"
    t.integer "doseage_amount"
    t.datetime "doseage_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "schedules", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "side_effects", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "treatment_side_effects", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "treatments", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
