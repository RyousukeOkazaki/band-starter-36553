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

ActiveRecord::Schema.define(version: 2021_09_09_055238) do

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nickname", null: false
    t.date "date_of_birth", null: false
    t.text "introduction", null: false
    t.integer "how_long_play", null: false
    t.integer "how_long_blank", null: false
    t.integer "how_long_band", null: false
    t.integer "how_many_band", null: false
    t.integer "how_many_compose", null: false
    t.string "favorite_artist", null: false
    t.string "URL", null: false
    t.text "career", null: false
    t.integer "sex_id", null: false
    t.integer "character_id", null: false
    t.integer "what_play_id", null: false
    t.integer "genre_id", null: false
    t.integer "prefecture_id", null: false
    t.integer "active_day_id", null: false
    t.integer "skill_id", null: false
    t.integer "leader_or_member_id", null: false
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

end
