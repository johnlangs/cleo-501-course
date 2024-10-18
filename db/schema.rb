# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.2].define(version: 2024_10_15_000205) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string "email", null: false
    t.string "full_name"
    t.string "uid"
    t.string "avatar_url"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
  end

  create_table "course_prerequisites", force: :cascade do |t|
    t.bigint "course_id", null: false
    t.bigint "prerequisite_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_course_prerequisites_on_course_id"
    t.index ["prerequisite_id"], name: "index_course_prerequisites_on_prerequisite_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.bigint "subject_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "code"
    t.integer "credits"
    t.index ["subject_id"], name: "index_courses_on_subject_id"
  end

  create_table "degree_plans", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "majors", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "requirement_courses", force: :cascade do |t|
    t.bigint "requirement_id", null: false
    t.bigint "course_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_requirement_courses_on_course_id"
    t.index ["requirement_id"], name: "index_requirement_courses_on_requirement_id"
  end

  create_table "requirements", force: :cascade do |t|
    t.string "name"
    t.bigint "degree_plan_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["degree_plan_id"], name: "index_requirements_on_degree_plan_id"
  end

  create_table "subjects", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "code"
  end

  create_table "user_interests", force: :cascade do |t|
    t.string "interest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_plan_courses", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id", null: false
    t.bigint "course_id", null: false
    t.index ["course_id"], name: "index_user_plan_courses_on_course_id"
    t.index ["user_id"], name: "index_user_plan_courses_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.boolean "isAdmin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "uid"
    t.string "provider"
    t.string "full_name"
    t.string "encrypted_password"
    t.string "major"
  end

  add_foreign_key "course_prerequisites", "courses"
  add_foreign_key "course_prerequisites", "courses", column: "prerequisite_id"
  add_foreign_key "courses", "subjects"
  add_foreign_key "requirement_courses", "courses"
  add_foreign_key "requirement_courses", "requirements"
  add_foreign_key "requirements", "degree_plans"
  add_foreign_key "user_plan_courses", "courses"
  add_foreign_key "user_plan_courses", "users"
end
