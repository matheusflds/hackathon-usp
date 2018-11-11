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

ActiveRecord::Schema.define(version: 2018_11_11_110732) do

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
    t.integer "department_id"
  end

  create_table "company_proposals_tags", id: false, force: :cascade do |t|
    t.bigint "company_proposal_id", null: false
    t.bigint "tag_id", null: false
    t.index ["company_proposal_id", "tag_id"], name: "index_company_proposals_tags_on_company_proposal_id_and_tag_id"
    t.index ["tag_id", "company_proposal_id"], name: "index_company_proposals_tags_on_tag_id_and_company_proposal_id"
  end

  create_table "department_proposals", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.decimal "investments"
    t.string "integrants"
    t.string "link"
    t.string "status"
    t.string "notes"
    t.decimal "invested"
    t.integer "department_id"
  end

  create_table "department_proposals_tags", id: false, force: :cascade do |t|
    t.bigint "department_proposal_id", null: false
    t.bigint "tag_id", null: false
    t.index ["department_proposal_id", "tag_id"], name: "department_proposal_tag_id"
    t.index ["tag_id", "department_proposal_id"], name: "tag_department_proposal_id"
  end

  create_table "departments", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone"
  end

  create_table "departments_tags", id: false, force: :cascade do |t|
    t.bigint "department_id", null: false
    t.bigint "tag_id", null: false
    t.index ["department_id", "tag_id"], name: "index_departments_tags_on_department_id_and_tag_id"
    t.index ["tag_id", "department_id"], name: "index_departments_tags_on_tag_id_and_department_id"
  end

  create_table "project_updates", force: :cascade do |t|
    t.string "title"
    t.decimal "value"
    t.string "subject"
    t.string "description"
    t.integer "project_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.decimal "investments"
    t.string "integrants"
    t.string "link"
    t.string "status"
    t.string "notes"
    t.integer "progress"
    t.decimal "invested"
    t.integer "company_id"
    t.integer "department_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "value"
  end

end
