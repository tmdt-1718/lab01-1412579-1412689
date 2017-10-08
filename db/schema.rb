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

ActiveRecord::Schema.define(version: 20171003175801) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "albums", force: :cascade do |t|
    t.text "name"
    t.bigserial "iduser", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.bigint "post_id", default: -> { "nextval('comments_idpost_seq'::regclass)" }, null: false
    t.bigint "user_id", default: -> { "nextval('comments_iduser_seq'::regclass)" }, null: false
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pictures", force: :cascade do |t|
    t.bigserial "idalbum", null: false
    t.text "img"
    t.bigserial "view", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.text "title"
    t.text "slug"
    t.text "content"
    t.text "thumbnail"
    t.bigint "user_id", default: -> { "nextval('posts_iduser_seq'::regclass)" }, null: false
    t.bigint "view", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.text "username"
    t.text "password_digest"
    t.text "email"
    t.text "fullname"
    t.bigserial "idfb", null: false
    t.text "token"
    t.text "picture"
    t.text "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
