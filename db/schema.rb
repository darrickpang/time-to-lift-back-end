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

ActiveRecord::Schema.define(version: 2020_09_08_171959) do

  create_table "class_lists", force: :cascade do |t|
    t.integer "class_session_id"
    t.integer "student_id"
    t.string "student_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "class_sessions", force: :cascade do |t|
    t.string "name"
    t.string "time"
    t.string "date"
    t.string "duration"
    t.integer "coach_id"
    t.integer "gym_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "coach_students", force: :cascade do |t|
    t.integer "student_id"
    t.integer "coach_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "coaches", force: :cascade do |t|
    t.string "name"
    t.string "password_digest"
    t.string "location"
    t.integer "age"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "friend_requests", force: :cascade do |t|
    t.integer "requestor_id"
    t.integer "receiver_id"
    t.string "status"
    t.string "requestor_name"
    t.string "receiver_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "friends", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "friend_user_id"
    t.index ["friend_user_id", "user_id"], name: "index_friends_on_friend_user_id_and_user_id", unique: true
    t.index ["user_id", "friend_user_id"], name: "index_friends_on_user_id_and_friend_user_id", unique: true
  end

  create_table "gym_coaches", force: :cascade do |t|
    t.integer "gym_id"
    t.integer "coach_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "gyms", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "city"
    t.integer "zip_code"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "student_dates", force: :cascade do |t|
    t.integer "student_id"
    t.string "date"
    t.string "class_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.string "password_digest"
    t.string "location"
    t.integer "age"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
