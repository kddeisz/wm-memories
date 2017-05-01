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

ActiveRecord::Schema.define(version: 20160619152538) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "moderators", id: :serial, force: :cascade do |t|
    t.string "email", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "photos", id: :serial, force: :cascade do |t|
    t.integer "story_id"
    t.string "attachment_file_name"
    t.string "attachment_content_type"
    t.integer "attachment_file_size"
    t.datetime "attachment_updated_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stories", id: :serial, force: :cascade do |t|
    t.integer "year"
    t.text "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal "lat", precision: 10, scale: 6
    t.decimal "lng", precision: 10, scale: 6
    t.boolean "approved", default: false, null: false
  end

  create_table "subscriptions", id: :serial, force: :cascade do |t|
    t.string "email", null: false
    t.boolean "validated", default: false, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
