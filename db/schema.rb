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

ActiveRecord::Schema.define(version: 2018_11_11_051200) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone"
  end

  create_table "companies_tags", id: false, force: :cascade do |t|
    t.bigint "company_id", null: false
    t.bigint "tag_id", null: false
    t.index ["company_id", "tag_id"], name: "index_companies_tags_on_company_id_and_tag_id"
    t.index ["tag_id", "company_id"], name: "index_companies_tags_on_tag_id_and_company_id"
  end

  create_table "company_proposals", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.decimal "investments"
    t.string "status"
    t.string "notes"
    t.integer "progress"
    t.decimal "invested"
    t.integer "company_id"
  end

  create_table "company_proposals_tags", id: false, force: :cascade do |t|
    t.bigint "company_proposal_id", null: false
    t.bigint "tag_id", null: false
    t.index ["company_proposal_id", "tag_id"], name: "index_company_proposals_tags_on_company_proposal_id_and_tag_id"
    t.index ["tag_id", "company_proposal_id"], name: "index_company_proposals_tags_on_tag_id_and_company_proposal_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "value"
  end

end
