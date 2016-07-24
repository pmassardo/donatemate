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

ActiveRecord::Schema.define(version: 20160714190517) do

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pledges", force: :cascade do |t|
    t.integer  "amount"
    t.boolean  "processed"
    t.string   "authorization"
    t.string   "card_number"
    t.integer  "project_id"
    t.integer  "reward_id"
    t.integer  "user_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["project_id"], name: "index_pledges_on_project_id"
    t.index ["reward_id"], name: "index_pledges_on_reward_id"
    t.index ["user_id"], name: "index_pledges_on_user_id"
  end

  create_table "projects", force: :cascade do |t|
    t.integer  "goal"
    t.integer  "user_id"
    t.datetime "start_date"
    t.datetime "end_date"
    t.text     "description"
    t.string   "title"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "category_id"
    t.index ["user_id"], name: "index_projects_on_user_id"
  end

  create_table "rewards", force: :cascade do |t|
    t.integer  "level"
    t.text     "description"
    t.string   "name"
    t.integer  "project_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["project_id"], name: "index_rewards_on_project_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "user_name"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "card_number"
    t.string   "cvv"
    t.integer  "expiry_month"
    t.integer  "expiry_year"
    t.string   "email",            null: false
    t.string   "crypted_password"
    t.string   "salt"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
