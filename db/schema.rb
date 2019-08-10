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

ActiveRecord::Schema.define(version: 2019_08_09_084222) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "mail"
    t.text "description"
    t.float "lat"
    t.float "lng"
    t.bigint "site_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "active"
    t.string "picture"
    t.index ["site_id"], name: "index_companies_on_site_id"
  end

  create_table "companies_tags", id: false, force: :cascade do |t|
    t.bigint "company_id", null: false
    t.bigint "tag_id", null: false
  end

  create_table "company_creations", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "mail"
    t.text "description"
    t.string "city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contact_admins", force: :cascade do |t|
    t.string "user"
    t.string "contact"
    t.string "object"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string "user"
    t.string "user_info"
    t.string "email"
    t.string "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cross_pages", force: :cascade do |t|
    t.string "slug"
    t.string "title"
    t.text "description"
    t.boolean "active"
    t.string "meta_title"
    t.text "meta_description"
    t.bigint "site_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "banner"
    t.index ["site_id"], name: "index_cross_pages_on_site_id"
  end

  create_table "cross_pages_tags", id: false, force: :cascade do |t|
    t.bigint "cross_page_id", null: false
    t.bigint "tag_id", null: false
  end

  create_table "sites", force: :cascade do |t|
    t.string "name"
    t.string "domain_name"
    t.string "meta_title"
    t.text "meta_description"
    t.string "banner"
    t.string "title"
    t.text "description"
    t.boolean "active"
    t.string "analytics"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "order"
  end

  add_foreign_key "companies", "sites"
  add_foreign_key "cross_pages", "sites"
end
