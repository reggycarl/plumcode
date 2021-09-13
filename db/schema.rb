# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20210902152757) do

  create_table "apply_classes", force: :cascade do |t|
    t.string   "user_id",     limit: 255
    t.text     "reason",      limit: 65535
    t.string   "skill_level", limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "fullname",    limit: 255
    t.integer  "mobile",      limit: 4
    t.string   "email",       limit: 255
    t.integer  "student_id",  limit: 4
  end

  create_table "course_details", force: :cascade do |t|
    t.integer  "course_id",          limit: 4
    t.string   "course_description", limit: 255
    t.string   "course_duration",    limit: 255
    t.string   "lecture_hours",      limit: 255
    t.string   "course_curriculum",  limit: 255
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "courses", force: :cascade do |t|
    t.string   "course_name",  limit: 255
    t.string   "course_image", limit: 255
    t.float    "amount",       limit: 24
    t.string   "tutor_name",   limit: 255
    t.string   "tutor_info",   limit: 255
    t.string   "course_level", limit: 255
    t.string   "category",     limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
