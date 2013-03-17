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

ActiveRecord::Schema.define(:version => 20130308041659) do

  create_table "messages", :force => true do |t|
    t.integer  "post_id"
    t.integer  "poster_id"
    t.integer  "sender_id"
    t.text     "body"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "post_specialties", :force => true do |t|
    t.integer  "post_id"
    t.integer  "specialty_id"
    t.string   "post_specialty_name"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "posts", :force => true do |t|
    t.integer  "user_id"
    t.text     "description"
    t.date     "start_date"
    t.date     "end_date"
    t.decimal  "fee"
    t.string   "location"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "specialties", :force => true do |t|
    t.string   "field"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "user_specialties", :force => true do |t|
    t.integer  "specialty_id"
    t.integer  "user_id"
    t.string   "user_specialty_name"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
    t.string   "password_digest"
    t.string   "auth_token"
    t.string   "password_reset_token"
    t.datetime "password_reset_sent_at"
  end

end
