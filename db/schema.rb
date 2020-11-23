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

ActiveRecord::Schema.define(version: 2020_11_23_130555) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "demos", force: :cascade do |t|
    t.string "name"
    t.string "url"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_demos_on_user_id"
  end

  create_table "personas", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.text "bio"
    t.string "nationality"
    t.string "location"
    t.string "job"
    t.string "relationship_status"
    t.string "income"
    t.bigint "demo_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["demo_id"], name: "index_personas_on_demo_id"
  end

  create_table "pitches", force: :cascade do |t|
    t.string "pain"
    t.string "target"
    t.string "solution"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "demo_id", null: false
    t.index ["demo_id"], name: "index_pitches_on_demo_id"
  end

  create_table "steps", force: :cascade do |t|
    t.string "standpoint"
    t.string "viewpoint"
    t.string "actionpoint"
    t.bigint "userjourney_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["userjourney_id"], name: "index_steps_on_userjourney_id"
  end

  create_table "userjourneys", force: :cascade do |t|
    t.bigint "demo_id", null: false
    t.bigint "persona_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.index ["demo_id"], name: "index_userjourneys_on_demo_id"
    t.index ["persona_id"], name: "index_userjourneys_on_persona_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "account_type"
    t.string "first_name"
    t.string "last_name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "demos", "users"
  add_foreign_key "personas", "demos"
  add_foreign_key "pitches", "demos"
  add_foreign_key "steps", "userjourneys"
  add_foreign_key "userjourneys", "demos"
  add_foreign_key "userjourneys", "personas"
end
