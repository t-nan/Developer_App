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

ActiveRecord::Schema.define(version: 2021_05_29_140303) do

  create_table "answers", force: :cascade do |t|
    t.integer "question_id", null: false
    t.string "author"
    t.text "body"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["question_id"], name: "index_answers_on_question_id"
  end

  create_table "contacts", force: :cascade do |t|
    t.string "name"
    t.string "surname"
    t.string "phone"
    t.integer "flat"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "flats", force: :cascade do |t|
    t.integer "plan_id", null: false
    t.integer "entrance"
    t.integer "floor"
    t.integer "number"
    t.integer "square"
    t.integer "rooms"
    t.boolean "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "image_file_name"
    t.string "image_content_type"
    t.bigint "image_file_size"
    t.datetime "image_updated_at"
    t.index ["plan_id"], name: "index_flats_on_plan_id"
  end

  create_table "plans", force: :cascade do |t|
    t.integer "kind"
    t.integer "rooms"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "image_file_name"
    t.string "image_content_type"
    t.bigint "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "questions", force: :cascade do |t|
    t.integer "plan_id", null: false
    t.string "author"
    t.text "body"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["plan_id"], name: "index_questions_on_plan_id"
  end

  add_foreign_key "answers", "questions"
  add_foreign_key "flats", "plans"
  add_foreign_key "questions", "plans"
end
