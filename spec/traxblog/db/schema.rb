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

ActiveRecord::Schema.define(version: 20131116200901) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "uuid-ossp"

  create_table "active_admin_comments", force: true do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "trax_admin_users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "trax_admin_users", ["email"], name: "index_trax_admin_users_on_email", unique: true, using: :btree
  add_index "trax_admin_users", ["reset_password_token"], name: "index_trax_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "trax_channels", id: :uuid, default: "uuid_generate_v4()", force: true do |t|
    t.uuid     "parent_id"
    t.uuid     "site_id"
    t.string   "slug"
    t.string   "name"
    t.text     "details"
    t.text     "description"
    t.text     "short_description"
    t.boolean  "entries_use_slug"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "trax_channels", ["entries_use_slug"], name: "index_trax_channels_on_entries_use_slug", using: :btree
  add_index "trax_channels", ["name"], name: "index_trax_channels_on_name", using: :btree
  add_index "trax_channels", ["parent_id"], name: "index_trax_channels_on_parent_id", using: :btree
  add_index "trax_channels", ["site_id"], name: "index_trax_channels_on_site_id", using: :btree
  add_index "trax_channels", ["slug"], name: "index_trax_channels_on_slug", using: :btree

  create_table "trax_entries", id: :uuid, default: "uuid_generate_v4()", force: true do |t|
    t.string   "title"
    t.string   "slug"
    t.string   "preview"
    t.text     "body"
    t.string   "status"
    t.datetime "status_last_changed_at"
    t.datetime "published_at"
    t.uuid     "last_edited_by"
    t.uuid     "parent_id"
    t.uuid     "user_id"
    t.uuid     "channel_id"
    t.uuid     "site_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "trax_entries", ["channel_id"], name: "index_trax_entries_on_channel_id", using: :btree
  add_index "trax_entries", ["last_edited_by"], name: "index_trax_entries_on_last_edited_by", using: :btree
  add_index "trax_entries", ["parent_id"], name: "index_trax_entries_on_parent_id", using: :btree
  add_index "trax_entries", ["published_at"], name: "index_trax_entries_on_published_at", using: :btree
  add_index "trax_entries", ["site_id"], name: "index_trax_entries_on_site_id", using: :btree
  add_index "trax_entries", ["slug"], name: "index_trax_entries_on_slug", using: :btree
  add_index "trax_entries", ["status"], name: "index_trax_entries_on_status", using: :btree
  add_index "trax_entries", ["status_last_changed_at"], name: "index_trax_entries_on_status_last_changed_at", using: :btree
  add_index "trax_entries", ["title"], name: "index_trax_entries_on_title", using: :btree
  add_index "trax_entries", ["user_id"], name: "index_trax_entries_on_user_id", using: :btree

  create_table "trax_sites", id: :uuid, default: "uuid_generate_v4()", force: true do |t|
    t.string   "name"
    t.text     "details"
    t.text     "description"
    t.string   "host"
    t.boolean  "is_default"
    t.uuid     "theme_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "trax_sites", ["host"], name: "index_trax_sites_on_host", using: :btree
  add_index "trax_sites", ["is_default"], name: "index_trax_sites_on_is_default", using: :btree
  add_index "trax_sites", ["name"], name: "index_trax_sites_on_name", using: :btree
  add_index "trax_sites", ["theme_id"], name: "index_trax_sites_on_theme_id", using: :btree

  create_table "trax_themes", id: :uuid, default: "uuid_generate_v4()", force: true do |t|
    t.string   "name"
    t.string   "version"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "trax_themes", ["name"], name: "index_trax_themes_on_name", using: :btree
  add_index "trax_themes", ["version"], name: "index_trax_themes_on_version", using: :btree

  create_table "trax_users", id: :uuid, default: "uuid_generate_v4()", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "trax_users", ["email"], name: "index_trax_users_on_email", unique: true, using: :btree
  add_index "trax_users", ["reset_password_token"], name: "index_trax_users_on_reset_password_token", unique: true, using: :btree

end
