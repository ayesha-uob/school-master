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

ActiveRecord::Schema.define(version: 20150918063046) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "Exams", force: :cascade do |t|
    t.string   "subject"
    t.date     "date"
    t.string   "grade"
    t.integer  "enroll_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "Fees", force: :cascade do |t|
    t.date     "payment_date"
    t.string   "amount"
    t.integer  "Student_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "Takes", force: :cascade do |t|
    t.integer  "class_id"
    t.integer  "teacher_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "classses", force: :cascade do |t|
    t.string   "class_name"
    t.string   "room_no"
    t.string   "section"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "enrolls", force: :cascade do |t|
    t.date     "date"
    t.integer  "Student_id"
    t.integer  "classs_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "exams", force: :cascade do |t|
    t.string   "subject"
    t.string   "ename"
    t.date     "edate"
    t.integer  "teacher_id"
    t.integer  "enroll_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "exams", ["enroll_id"], name: "index_exams_on_enroll_id", using: :btree
  add_index "exams", ["teacher_id"], name: "index_exams_on_teacher_id", using: :btree

  create_table "fees", force: :cascade do |t|
    t.date     "fdate"
    t.string   "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string   "s_name"
    t.string   "f_name"
    t.date     "DOB"
    t.string   "religion"
    t.string   "address"
    t.string   "father_occupation"
    t.string   "CNIC"
    t.string   "phone_no"
    t.string   "email"
    t.string   "distric"
    t.string   "gender"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.string   "name"
    t.string   "father_name"
    t.string   "CINC"
    t.string   "qualification"
    t.date     "joining_date"
    t.string   "gender"
    t.string   "religion"
    t.string   "contact"
    t.string   "address"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",            null: false
    t.string   "crypted_password"
    t.string   "salt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

  add_foreign_key "exams", "enrolls"
  add_foreign_key "exams", "teachers"
end
