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

ActiveRecord::Schema.define(version: 20141114032039) do

  create_table "answers", force: true do |t|
    t.string   "description"
    t.integer  "votes"
    t.integer  "question_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bs_posts", force: true do |t|
    t.string   "title"
    t.string   "description"
    t.string   "type"
    t.string   "image"
    t.integer  "cost"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "location_comments", force: true do |t|
    t.string   "comment"
    t.integer  "vote"
    t.integer  "location_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locations", force: true do |t|
    t.string   "title"
    t.string   "url"
    t.text     "description", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "upvote",                  default: 0
    t.string   "location"
  end

  create_table "media", force: true do |t|
    t.string   "title"
    t.string   "url"
    t.integer  "vote"
    t.string   "description"
    t.string   "type"
    t.integer  "user_id"
    t.integer  "media_comment_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "media_comments", force: true do |t|
    t.string   "comment"
    t.integer  "vote"
    t.integer  "user_id"
    t.integer  "media_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "questions", force: true do |t|
    t.string   "title"
    t.string   "description"
    t.string   "tags"
    t.integer  "votes"
    t.integer  "views"
    t.integer  "user_id"
    t.integer  "answer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.text     "password_digest",     limit: 255
    t.integer  "upvotes"
    t.integer  "question_id"
    t.integer  "answer_id"
    t.integer  "medium_id"
    t.integer  "media_comment_id"
    t.integer  "location_comment_id"
    t.integer  "bspost_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
