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

ActiveRecord::Schema.define(:version => 20120201222705) do

  create_table "campaigns", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.text     "script"
    t.integer  "leads_count",          :default => 0
    t.float    "lead_price",           :default => 0.0
    t.float    "payout",               :default => 0.0
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "leads_purchased",      :default => 0
    t.integer  "leads_credited",       :default => 0
    t.text     "email_text"
    t.string   "email_subject"
    t.boolean  "welcome_email_switch", :default => false
    t.integer  "target",               :default => 0
    t.string   "special"
    t.text     "notes"
    t.boolean  "active",               :default => false
    t.boolean  "pending",              :default => true
    t.string   "cc"
    t.integer  "group_campaign_id"
    t.boolean  "member",               :default => false
  end

  create_table "group_campaigns", :force => true do |t|
    t.string   "subject"
    t.text     "body"
    t.text     "html_body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "cc"
    t.text     "script"
  end

  create_table "leads", :force => true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "company"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zipcode"
    t.string   "phonenumber"
    t.string   "email"
    t.integer  "user_id"
    t.integer  "campaign_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "notes"
    t.string   "best_time"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                                 :default => "",    :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "",    :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "phone"
    t.string   "address"
    t.boolean  "agent",                                 :default => true
    t.boolean  "admin",                                 :default => false
    t.integer  "leads_count",                           :default => 0
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
