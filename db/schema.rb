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

ActiveRecord::Schema.define(version: 20151117172314) do

  create_table "jos_cashes", force: :cascade do |t|
    t.decimal  "amount",                    precision: 20, scale: 6, null: false
    t.decimal  "balance",                   precision: 20, scale: 6
    t.text     "description", limit: 65535
    t.boolean  "in_out"
    t.datetime "created_at",                                         null: false
    t.datetime "updated_at",                                         null: false
  end

  create_table "jos_products", force: :cascade do |t|
    t.string   "code",           limit: 255,                            null: false
    t.string   "branch",         limit: 255,                            null: false
    t.string   "category_id",    limit: 255
    t.string   "model",          limit: 255
    t.decimal  "purchase_price",               precision: 15, scale: 4, null: false
    t.decimal  "code_price",                   precision: 15, scale: 4, null: false
    t.integer  "quantity",       limit: 4,                              null: false
    t.text     "tags",           limit: 65535
    t.integer  "memo",           limit: 4,                              null: false
    t.integer  "first_pin",      limit: 4,                              null: false
    t.integer  "last_pin",       limit: 4,                              null: false
    t.datetime "created_at",                                            null: false
    t.datetime "updated_at",                                            null: false
  end

  create_table "jos_sales", force: :cascade do |t|
    t.string   "invoice_no", limit: 255,                            null: false
    t.string   "code",       limit: 255
    t.integer  "quantity",   limit: 4
    t.decimal  "sold_price",               precision: 15, scale: 4
    t.text     "invoice",    limit: 65535
    t.string   "uid",        limit: 255
    t.datetime "created_on"
    t.integer  "created_by", limit: 4
    t.string   "ipaddress",  limit: 255
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
  end

end
