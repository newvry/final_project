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

ActiveRecord::Schema.define(version: 20170504064657) do

  create_table "courses", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "events", force: :cascade do |t|
    t.string   "title"
    t.datetime "start"
    t.datetime "end"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "color"
  end

  create_table "favorites", force: :cascade do |t|
    t.integer  "unit_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lessons", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "course_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string   "image",      default: "/assets/images/default.png"
    t.string   "name"
    t.string   "level",      default: "Entry Level"
    t.text     "intro"
    t.integer  "user_id"
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
  end

  create_table "unit_completeds", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "unit_id"
    t.datetime "completed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["unit_id"], name: "index_unit_completeds_on_unit_id"
    t.index ["user_id"], name: "index_unit_completeds_on_user_id"
  end

  create_table "units", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "lesson_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "video"
    t.string   "document"
    t.index ["lesson_id"], name: "index_units_on_lesson_id"
  end

  create_table "user_courseships", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",                                                                                                               null: false
    t.string   "encrypted_password",     default: "",                                                                                                               null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,                                                                                                                null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                                                                                                                        null: false
    t.datetime "updated_at",                                                                                                                                        null: false
    t.string   "image",                  default: "http://images.iimg.in/c/569f4771c45d324bda8b4660-4-501-0-1453279096/google/user-icon-png-pnglogocom.img?crop=1"
    t.string   "fb_uid"
    t.string   "fb_token"
    t.string   "role",                   default: "trainee"
    t.string   "name"
    t.string   "level",                  default: "Entry Level"
    t.text     "intro"
    t.integer  "mobile_phone"
    t.boolean  "email_confirmed",        default: false
    t.string   "confirm_token"
    t.integer  "course_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["fb_uid"], name: "index_users_on_fb_uid"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
