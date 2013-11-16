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

ActiveRecord::Schema.define(version: 20131115193653) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "uuid-ossp"

  create_table "trax_posts", force: true do |t|
    t.uuid     "author_id"
    t.uuid     "category_id"
    t.uuid     "channel_id"
    t.uuid     "last_edited_by"
    t.string   "title"
    t.string   "permalink"
    t.text     "body"
    t.datetime "last_edited_at"
    t.datetime "published_at"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "trax_posts", ["author_id"], name: "index_trax_posts_on_author_id", using: :btree
  add_index "trax_posts", ["category_id"], name: "index_trax_posts_on_category_id", using: :btree
  add_index "trax_posts", ["channel_id"], name: "index_trax_posts_on_channel_id", using: :btree
  add_index "trax_posts", ["last_edited_at"], name: "index_trax_posts_on_last_edited_at", using: :btree
  add_index "trax_posts", ["last_edited_by"], name: "index_trax_posts_on_last_edited_by", using: :btree
  add_index "trax_posts", ["permalink"], name: "index_trax_posts_on_permalink", using: :btree
  add_index "trax_posts", ["published_at"], name: "index_trax_posts_on_published_at", using: :btree
  add_index "trax_posts", ["status"], name: "index_trax_posts_on_status", using: :btree
  add_index "trax_posts", ["title"], name: "index_trax_posts_on_title", using: :btree

end
