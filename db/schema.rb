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

ActiveRecord::Schema.define(version: 20131104005941) do

  create_table "books", force: true do |t|
    t.string   "name"
    t.string   "full_title"
    t.string   "author"
    t.string   "publisher"
    t.decimal  "version"
    t.string   "isbn"
    t.date     "date_published"
    t.string   "original_price"
    t.string   "sale_price"
    t.string   "cover_pic"
    t.string   "tags"
    t.integer  "popularity"
    t.datetime "time_added"
    t.text     "description"
    t.integer  "in_stock"
    t.string   "style"
    t.string   "publication_city"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
