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

ActiveRecord::Schema.define(version: 20141126022338) do

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
    t.text     "essay"
  end

  create_table "news_posts", force: true do |t|
    t.string   "title"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "photo_comments", force: true do |t|
    t.string   "comment"
    t.integer  "upvotes",    default: 0
    t.integer  "user_id"
    t.integer  "photo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "photos", force: true do |t|
    t.string   "title"
    t.string   "description"
    t.string   "image"
    t.integer  "upvotes",          default: 0
    t.integer  "user_id"
    t.integer  "photo_comment_id"
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

  create_table "taggings", force: true do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.integer  "tagger_id"
    t.string   "tagger_type"
    t.string   "context",       limit: 128
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id", "taggable_id", "taggable_type", "context", "tagger_id", "tagger_type"], name: "taggings_idx", unique: true
  add_index "taggings", ["taggable_id", "taggable_type", "context"], name: "index_taggings_on_taggable_id_and_taggable_type_and_context"

  create_table "tags", force: true do |t|
    t.string  "name"
    t.integer "taggings_count", default: 0
  end

  add_index "tags", ["name"], name: "index_tags_on_name", unique: true

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.text     "password_digest",     limit: 255
    t.integer  "upvotes",                         default: 0
    t.integer  "question_id"
    t.integer  "answer_id"
    t.integer  "location_comment_id"
    t.integer  "bspost_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin",                           default: false
    t.integer  "photo_id"
    t.integer  "photo_comment_id"
  end

  add_index "users", ["photo_comment_id"], name: "index_users_on_photo_comment_id"
  add_index "users", ["photo_id"], name: "index_users_on_photo_id"

  create_table "video_comments", force: true do |t|
    t.string   "text"
    t.integer  "votes",      default: 0
    t.integer  "user_id"
    t.integer  "video_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "videos", force: true do |t|
    t.string   "title"
    t.string   "url"
    t.string   "description"
    t.integer  "votes",            default: 0
    t.integer  "user_id"
    t.integer  "video_comment_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
