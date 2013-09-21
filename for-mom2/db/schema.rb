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

ActiveRecord::Schema.define(version: 20130920211517) do

  create_table "applyings", force: true do |t|
    t.integer  "school_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "applyings", ["school_id"], name: "index_applyings_on_school_id"
  add_index "applyings", ["user_id"], name: "index_applyings_on_user_id"

  create_table "essay_prompts", force: true do |t|
    t.text     "question"
    t.integer  "school_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "essay_prompts", ["school_id"], name: "index_essay_prompts_on_school_id"

  create_table "prompts", force: true do |t|
    t.string   "question"
    t.integer  "school_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "prompt_id"
  end

  add_index "prompts", ["school_id"], name: "index_prompts_on_school_id"

  create_table "responses", force: true do |t|
    t.string   "submitter"
    t.text     "comments"
    t.integer  "prompt_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "response_id"
  end

  add_index "responses", ["prompt_id"], name: "index_responses_on_prompt_id"

  create_table "schools", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "school_id"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.integer  "grad_year"
    t.string   "high_school"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
