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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130823072114) do

  create_table "admins", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string   "name"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "admins", ["email"], :name => "index_admins_on_email", :unique => true
  add_index "admins", ["reset_password_token"], :name => "index_admins_on_reset_password_token", :unique => true

  create_table "area_points", :force => true do |t|
    t.integer  "property_id"
    t.decimal  "latitude",    :precision => 15, :scale => 12
    t.decimal  "longitude",   :precision => 15, :scale => 12
    t.datetime "created_at",                                  :null => false
    t.datetime "updated_at",                                  :null => false
  end

  create_table "articles", :force => true do |t|
    t.string   "title"
    t.string   "thumbnail"
    t.text     "content"
    t.text     "summary"
    t.integer  "m_news_category_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "m_cities", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "m_districts", :force => true do |t|
    t.string   "name"
    t.integer  "m_prefecture_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "m_news_categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "m_prefectures", :force => true do |t|
    t.string   "name"
    t.integer  "m_city_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "m_prefectures", ["name"], :name => "index_m_prefectures_on_name"

  create_table "prices", :force => true do |t|
    t.integer  "properties_id"
    t.date     "price_date"
    t.float    "wanted_price"
    t.float    "rent_price"
    t.float    "service_price"
    t.float    "sold_price"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "properties", :force => true do |t|
    t.float    "area"
    t.float    "length"
    t.float    "width"
    t.float    "useable_area"
    t.string   "sale_type"
    t.string   "build_type"
    t.string   "ownage_type"
    t.string   "owner"
    t.string   "street"
    t.integer  "floor_cnt"
    t.integer  "l_room_cnt"
    t.integer  "t_room_cnt"
    t.date     "year_built"
    t.integer  "tel"
    t.string   "email"
    t.string   "address_no"
    t.string   "photo1"
    t.integer  "m_prefecture_id"
    t.integer  "m_city_id"
    t.integer  "m_district_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
