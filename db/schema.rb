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

ActiveRecord::Schema.define(version: 2020_04_27_061500) do

  create_table "builds", force: :cascade do |t|
    t.string "build_number"
    t.string "build_url"
    t.decimal "build_area", precision: 5, scale: 2
    t.integer "build_holding_point_personal"
    t.integer "build_holding_point_all"
    t.string "build_type_use"
    t.string "use_partition"
    t.integer "yfcase_id", null: false
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
    t.integer "yfcase_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["yfcase_id"], name: "index_lands_on_yfcase_id"
  end

  create_table "objectbuilds", force: :cascade do |t|
    t.string "address"
    t.integer "total_price"
    t.decimal "build_area", precision: 9, scale: 2
    t.decimal "house_age", precision: 5, scale: 2
    t.string "floor_height"
    t.string "objectbuild_url"
    t.string "surveyora"
    t.string "surveyorb"
    t.decimal "plusa", precision: 3, scale: 2
    t.decimal "plusb", precision: 3, scale: 2
    t.integer "yfcase_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["yfcase_id"], name: "index_objectbuilds_on_yfcase_id"
  end

  create_table "personnals", force: :cascade do |t|
    t.boolean "is_debtor"
    t.boolean "is_creditor"
    t.boolean "is_land_owner"
    t.boolean "is_build_owner"
    t.string "name"
    t.string "identity_card"
    t.datetime "birthday"
    t.string "local_phone"
    t.string "mobile_phone"
    t.string "personnal_notes"
    t.integer "yfcase_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "person_country"
    t.string "person_township"
    t.string "person_village"
    t.string "person_neighbor"
    t.string "person_street"
    t.string "person_section"
    t.string "person_lane"
    t.string "person_alley"
    t.string "person_number"
    t.string "person_floor"
    t.boolean "is_original_owner"
    t.boolean "is_new_owner"
    t.boolean "is_deed_tax_agent"
    t.boolean "is_tax_agent"
    t.string "identity_code"
    t.string "public_or_private"
    t.integer "right_share_person"
    t.integer "right_share_all"
    t.index ["yfcase_id"], name: "index_personnals_on_yfcase_id"
  end

  create_table "plusrateas", force: :cascade do |t|
    t.string "persona"
    t.decimal "plusa", precision: 4, scale: 2
    t.integer "objectbuild_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["objectbuild_id"], name: "index_plusrateas_on_objectbuild_id"
  end

  create_table "plusratebs", force: :cascade do |t|
    t.string "personb"
    t.decimal "plusb", precision: 4, scale: 2
    t.integer "objectbuild_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["objectbuild_id"], name: "index_plusratebs_on_objectbuild_id"
  end

  create_table "subsigntrueas", force: :cascade do |t|
    t.string "signtruea"
    t.integer "yfcase_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "signtruea_first_name"
    t.string "signtruea_last_name"
    t.date "signtruea_date"
    t.index ["yfcase_id"], name: "index_subsigntrueas_on_yfcase_id"
  end

  create_table "subsigntruebs", force: :cascade do |t|
    t.string "signtrueb"
    t.integer "yfcase_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "signtrueb_first_name"
    t.string "signtrueb_last_name"
    t.date "signtrueb_date"
    t.index ["yfcase_id"], name: "index_subsigntruebs_on_yfcase_id"
  end

  create_table "subsigntruecs", force: :cascade do |t|
    t.string "signtruec"
    t.integer "yfcase_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "signtruec_first_name"
    t.string "signtruec_last_name"
    t.date "signtruec_date"
    t.index ["yfcase_id"], name: "index_subsigntruecs_on_yfcase_id"
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
    t.string "first_name"
    t.string "last_name"
    t.integer "role"
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
    t.boolean "co_owner"
    t.boolean "occupy"
    t.boolean "register"
    t.boolean "parking_space"
    t.boolean "management_fee"
    t.boolean "rent"
    t.boolean "leak"
    t.boolean "easy_parking"
    t.boolean "railway"
    t.boolean "vegetable_market"
    t.boolean "supermarket"
    t.boolean "school"
    t.boolean "park"
    t.boolean "post_office"
    t.boolean "main_road"
    t.boolean "water_and_power_failure"
    t.boolean "good_vision"
    t.integer "user_id"
    t.date "final_decision_date"
    t.index ["country_id"], name: "index_yfcases_on_country_id"
    t.index ["township_id"], name: "index_yfcases_on_township_id"
    t.index ["user_id"], name: "index_yfcases_on_user_id"
  end

  add_foreign_key "builds", "yfcases"
  add_foreign_key "lands", "yfcases"
  add_foreign_key "objectbuilds", "yfcases"
  add_foreign_key "personnals", "yfcases"
  add_foreign_key "plusrateas", "objectbuilds"
  add_foreign_key "plusratebs", "objectbuilds"
  add_foreign_key "subsigntrueas", "yfcases"
  add_foreign_key "subsigntruebs", "yfcases"
  add_foreign_key "subsigntruecs", "yfcases"
end
