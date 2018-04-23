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

ActiveRecord::Schema.define(version: 20180422144347) do

  create_table "articles_tags", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "article_id"
    t.integer "tag_id"
    t.index ["article_id"], name: "index_articles_tags_on_article_id", using: :btree
    t.index ["tag_id"], name: "index_articles_tags_on_tag_id", using: :btree
  end

  create_table "blogs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text   "settings", limit: 65535
    t.string "base_url"
  end

  create_table "contents", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "type"
    t.string   "title"
    t.string   "author"
    t.text     "body",            limit: 65535
    t.text     "extended",        limit: 65535
    t.text     "excerpt",         limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.string   "permalink"
    t.string   "guid"
    t.integer  "text_filter_id"
    t.text     "whiteboard",      limit: 65535
    t.string   "name"
    t.boolean  "published",                     default: false
    t.boolean  "allow_pings"
    t.boolean  "allow_comments"
    t.datetime "published_at"
    t.string   "state"
    t.integer  "parent_id"
    t.text     "settings",        limit: 65535
    t.string   "post_type",                     default: "read"
    t.integer  "blog_id",                                        null: false
    t.text     "backgroundimage", limit: 65535
    t.index ["id", "type"], name: "index_contents_on_id_and_type", using: :btree
    t.index ["published"], name: "index_contents_on_published", using: :btree
    t.index ["text_filter_id"], name: "index_contents_on_text_filter_id", using: :btree
    t.index ["user_id"], name: "index_contents_on_user_id", using: :btree
  end

  create_table "feedback", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "type"
    t.string   "title"
    t.string   "author"
    t.text     "body",             limit: 65535
    t.text     "excerpt",          limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.string   "guid"
    t.integer  "text_filter_id"
    t.text     "whiteboard",       limit: 65535
    t.integer  "article_id"
    t.string   "email"
    t.string   "url"
    t.string   "ip",               limit: 40
    t.string   "blog_name"
    t.boolean  "published",                      default: false
    t.datetime "published_at"
    t.string   "state"
    t.boolean  "status_confirmed"
    t.string   "user_agent"
    t.index ["article_id"], name: "index_feedback_on_article_id", using: :btree
    t.index ["id", "type"], name: "index_feedback_on_id_and_type", using: :btree
    t.index ["text_filter_id"], name: "index_feedback_on_text_filter_id", using: :btree
    t.index ["user_id"], name: "index_feedback_on_user_id", using: :btree
  end

  create_table "page_caches", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.index ["name"], name: "index_page_caches_on_name", using: :btree
  end

  create_table "picks", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "title"
    t.string   "author"
    t.text     "description",    limit: 65535
    t.string   "picktype"
    t.text     "link",           limit: 65535
    t.string   "score"
    t.string   "isbn"
    t.string   "publisher"
    t.integer  "year_published"
    t.string   "pick_length"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.text     "image_link",     limit: 65535
  end

  create_table "pings", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "article_id"
    t.string   "url"
    t.datetime "created_at"
    t.index ["article_id"], name: "index_pings_on_article_id", using: :btree
  end

  create_table "post_types", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "permalink"
    t.string "description"
  end

  create_table "redirects", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "from_path"
    t.string   "to_path"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "content_id"
    t.integer  "blog_id"
  end

  create_table "resources", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "size"
    t.string   "upload"
    t.string   "mime"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "article_id"
    t.boolean  "itunes_metadata"
    t.string   "itunes_author"
    t.string   "itunes_subtitle"
    t.integer  "itunes_duration"
    t.text     "itunes_summary",  limit: 65535
    t.string   "itunes_keywords"
    t.string   "itunes_category"
    t.boolean  "itunes_explicit"
    t.integer  "blog_id",                       null: false
    t.index ["article_id"], name: "index_resources_on_article_id", using: :btree
  end

  create_table "sessions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "session_id",               null: false
    t.text     "data",       limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.index ["session_id"], name: "index_sessions_on_session_id", unique: true, using: :btree
    t.index ["updated_at"], name: "index_sessions_on_updated_at", using: :btree
  end

  create_table "sidebars", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "active_position"
    t.text    "config",          limit: 65535
    t.integer "staged_position"
    t.string  "type"
    t.integer "blog_id",                       null: false
    t.index ["id", "type"], name: "index_sidebars_on_id_and_type", using: :btree
  end

  create_table "sitealizer", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "path"
    t.string   "ip"
    t.string   "referer"
    t.string   "language"
    t.string   "user_agent"
    t.datetime "created_at"
    t.date     "created_on"
  end

  create_table "tags", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "display_name"
    t.integer  "blog_id"
  end

  create_table "text_filters", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "description"
    t.string "markup"
    t.text   "filters",     limit: 65535
    t.text   "params",      limit: 65535
  end

  create_table "triggers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "pending_item_id"
    t.string   "pending_item_type"
    t.datetime "due_at"
    t.string   "trigger_method"
    t.index ["pending_item_id", "pending_item_type"], name: "index_triggers_on_pending_item_id_and_pending_item_type", using: :btree
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "login"
    t.string   "encrypted_password",                      default: "",       null: false
    t.string   "email",                                   default: "",       null: false
    t.text     "name",                      limit: 65535
    t.boolean  "notify_via_email"
    t.boolean  "notify_on_new_articles"
    t.boolean  "notify_on_comments"
    t.string   "remember_token"
    t.datetime "remember_token_expires_at"
    t.string   "text_filter_id",                          default: "1"
    t.string   "state",                                   default: "active"
    t.datetime "last_connection"
    t.text     "settings",                  limit: 65535
    t.integer  "resource_id"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                           default: 0,        null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "profile"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
    t.index ["resource_id"], name: "index_users_on_resource_id", using: :btree
    t.index ["text_filter_id"], name: "index_users_on_text_filter_id", using: :btree
  end

end
