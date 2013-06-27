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

ActiveRecord::Schema.define(:version => 20130603141816) do

  create_table "applicants", :force => true do |t|
    t.string   "email",                  :default => "",    :null => false
    t.string   "encrypted_password",     :default => "",    :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.string   "name",                                      :null => false
    t.string   "city",                                      :null => false
    t.string   "website"
    t.string   "description"
    t.string   "resume"
    t.boolean  "approved",               :default => false, :null => false
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
  end

  add_index "applicants", ["email"], :name => "index_applicants_on_email", :unique => true
  add_index "applicants", ["reset_password_token"], :name => "index_applicants_on_reset_password_token", :unique => true

  create_table "employers", :force => true do |t|
    t.string   "email",                  :default => "",    :null => false
    t.string   "encrypted_password",     :default => "",    :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "name",                                      :null => false
    t.string   "city",                                      :null => false
    t.string   "company_name",                              :null => false
    t.string   "website"
    t.boolean  "admin",                  :default => false, :null => false
    t.string   "logo"
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
    t.integer  "prepaid",                :default => 0
  end

  add_index "employers", ["email"], :name => "index_employers_on_email", :unique => true
  add_index "employers", ["reset_password_token"], :name => "index_employers_on_reset_password_token", :unique => true

  create_table "job_applications", :force => true do |t|
    t.integer  "job_id",       :null => false
    t.integer  "applicant_id", :null => false
    t.text     "cover_letter", :null => false
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "jobs", :force => true do |t|
    t.integer  "employer_id",                            :null => false
    t.string   "title",                                  :null => false
    t.string   "location",                               :null => false
    t.string   "position_type", :default => "Full-Time", :null => false
    t.text     "description",                            :null => false
    t.text     "info",                                   :null => false
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.boolean  "jobpaid"
  end

  create_table "monologue_posts", :force => true do |t|
    t.integer  "posts_revision_id"
    t.boolean  "published"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "monologue_posts_revisions", :force => true do |t|
    t.string   "title"
    t.text     "content"
    t.string   "url"
    t.integer  "user_id"
    t.integer  "post_id"
    t.datetime "published_at"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "monologue_posts_revisions", ["id"], :name => "index_monologue_posts_revisions_on_id", :unique => true
  add_index "monologue_posts_revisions", ["post_id"], :name => "index_monologue_posts_revisions_on_post_id"
  add_index "monologue_posts_revisions", ["published_at"], :name => "index_monologue_posts_revisions_on_published_at"
  add_index "monologue_posts_revisions", ["url"], :name => "index_monologue_posts_revisions_on_url"

  create_table "monologue_taggings", :force => true do |t|
    t.integer "post_id"
    t.integer "tag_id"
  end

  add_index "monologue_taggings", ["post_id"], :name => "index_monologue_taggings_on_post_id"
  add_index "monologue_taggings", ["tag_id"], :name => "index_monologue_taggings_on_tag_id"

  create_table "monologue_tags", :force => true do |t|
    t.string "name"
  end

  add_index "monologue_tags", ["name"], :name => "index_monologue_tags_on_name"

  create_table "monologue_users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "payment_notifications", :force => true do |t|
    t.text     "params"
    t.integer  "job_id"
    t.string   "status"
    t.string   "transaction_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "taggings", :force => true do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.integer  "tagger_id"
    t.string   "tagger_type"
    t.string   "context",       :limit => 128
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id"], :name => "index_taggings_on_tag_id"
  add_index "taggings", ["taggable_id", "taggable_type", "context"], :name => "index_taggings_on_taggable_id_and_taggable_type_and_context"

  create_table "tags", :force => true do |t|
    t.string "name"
  end

end
