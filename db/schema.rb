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

ActiveRecord::Schema.define(version: 2021_09_14_082011) do

  create_table "as_leaders", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "what_band", null: false
    t.text "why_band", null: false
    t.text "ideal_member", null: false
    t.integer "how_long_leader", null: false
    t.integer "leader_ship_id", null: false
    t.integer "do_genre_id", null: false
    t.integer "order_style_id", null: false
    t.integer "compose_style_id", null: false
    t.integer "belong_many_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_as_leaders_on_user_id"
  end

  create_table "as_members", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "what_band", null: false
    t.text "why_band", null: false
    t.text "ideal_leader", null: false
    t.integer "do_genre_id", null: false
    t.integer "ordered_style_id", null: false
    t.integer "want_belong_many_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_as_members_on_user_id"
  end

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
