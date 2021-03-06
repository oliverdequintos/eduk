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

ActiveRecord::Schema.define(version: 20171101151905) do

  create_table "ratings", force: :cascade do |t|
    t.integer  "student_id", limit: 4
    t.integer  "teacher_id", limit: 4
    t.decimal  "rate",                     precision: 10
    t.text     "notes",      limit: 65535
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
  end

  create_table "student_subjects", force: :cascade do |t|
    t.integer  "user_id",            limit: 4
    t.integer  "teacher_subject_id", limit: 4
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "student_subjects", ["teacher_subject_id"], name: "index_student_subjects_on_teacher_subject_id", using: :btree
  add_index "student_subjects", ["user_id"], name: "index_student_subjects_on_user_id", using: :btree

  create_table "subjects", force: :cascade do |t|
    t.string   "subject_code", limit: 255
    t.string   "name",         limit: 255
    t.text     "description",  limit: 65535
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "teacher_subjects", force: :cascade do |t|
    t.integer  "subject_id", limit: 4
    t.integer  "user_id",    limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "teacher_subjects", ["subject_id"], name: "index_teacher_subjects_on_subject_id", using: :btree
  add_index "teacher_subjects", ["user_id"], name: "index_teacher_subjects_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "",    null: false
    t.string   "encrypted_password",     limit: 255, default: "",    null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.string   "first_name",             limit: 255
    t.string   "middle_name",            limit: 255
    t.string   "last_name",              limit: 255
    t.string   "contact_no",             limit: 255
    t.date     "date_of_birth"
    t.boolean  "gender",                 limit: 1
    t.datetime "created_at",                                         null: false
    t.datetime "updated_at",                                         null: false
    t.boolean  "is_teacher",             limit: 1,   default: false
    t.boolean  "is_admin",               limit: 1,   default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "student_subjects", "teacher_subjects"
  add_foreign_key "student_subjects", "users"
  add_foreign_key "teacher_subjects", "subjects"
  add_foreign_key "teacher_subjects", "users"
end
