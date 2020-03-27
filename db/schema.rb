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

ActiveRecord::Schema.define(version: 2020_03_27_063954) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "builds", force: :cascade do |t|
    t.string "build_number"
    t.string "build_url"
    t.decimal "build_area", precision: 5, scale: 2
    t.integer "build_holding_point_personal"
    t.integer "build_holding_point_all"
    t.string "build_type_use"
    t.string "use_partition"
    t.bigint "yfcase_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["yfcase_id"], name: "index_builds_on_yfcase_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "lands", force: :cascade do |t|
    t.string "land_number"
    t.string "land_url"
    t.decimal "land_area", precision: 5, scale: 2
    t.integer "land_holding_point_personal"
    t.integer "land_holding_point_all"
    t.bigint "yfcase_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["yfcase_id"], name: "index_lands_on_yfcase_id"
  end

  create_table "personnals", force: :cascade do |t|
    t.boolean "is_debtor"
    t.boolean "is_creditor"
    t.boolean "is_land_owner"
    t.boolean "is_build_owner"
    t.string "name"
    t.string "identity_card"
    t.datetime "birthday"
    t.string "other_address"
    t.string "local_phone"
    t.string "mobile_phone"
    t.string "personnal_notes"
    t.bigint "yfcase_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["yfcase_id"], name: "index_personnals_on_yfcase_id"
  end

  create_table "townships", force: :cascade do |t|
    t.string "name"
    t.string "zip_code"
    t.string "district_court"
    t.string "land_office"
    t.string "finance_and_tax_bureau"
    t.string "police_station"
    t.string "irs"
    t.string "home_office"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "country_id"
    t.index ["country_id"], name: "index_townships_on_country_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "yfcases", force: :cascade do |t|
    t.string "case_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "country_id"
    t.integer "township_id"
    t.string "other_address"
    t.date "auction_day_1"
    t.date "auction_day_2"
    t.date "auction_day_3"
    t.date "auction_day_4"
    t.integer "floor_price_1"
    t.integer "floor_price_2"
    t.integer "floor_price_3"
    t.integer "floor_price_4"
    t.integer "click_1"
    t.integer "click_2"
    t.integer "click_3"
    t.integer "click_4"
    t.integer "monitor_1"
    t.integer "monitor_2"
    t.integer "monitor_3"
    t.integer "monitor_4"
    t.integer "margin_1"
    t.integer "margin_2"
    t.integer "margin_3"
    t.integer "margin_4"
    t.string "auction_notes"
    t.date "first_survey_day"
    t.date "other_survey_day"
    t.string "foreclosure_announcement_title"
    t.string "foreclosure_announcement_link"
    t.string "object_photo_title"
    t.string "object_photo_link"
    t.string "net_price_registration_market_price_title"
    t.string "net_price_registration_market_price_link"
    t.string "net_price_registration_map_title"
    t.string "net_price_registration_map_link"
    t.string "net_price_registration_photo_title"
    t.string "net_price_registration_photo_link"
    t.string "auction_record_title"
    t.string "auction_record_link"
    t.string "other_notes"
    t.string "survey_resolution"
    t.string "final_decision"
    t.string "occupy"
    t.string "register"
    t.string "parking_space"
    t.string "management_fee"
    t.string "rent"
    t.string "leak"
    t.string "easy_parking"
    t.string "railway"
    t.string "vegetable_market"
    t.string "supermarket"
    t.string "school"
    t.string "park"
    t.string "post_office"
    t.string "main_road"
    t.string "water_and_power_failure"
    t.string "good_vision"
    t.boolean "co_owner"
    t.index ["country_id"], name: "index_yfcases_on_country_id"
    t.index ["township_id"], name: "index_yfcases_on_township_id"
  end

  add_foreign_key "builds", "yfcases"
  add_foreign_key "lands", "yfcases"
  add_foreign_key "personnals", "yfcases"
end
