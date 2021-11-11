# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_11_11_144656) do

  create_table "authors", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "homepage"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "authors_papers", id: false, force: :cascade do |t|
    t.integer "author_id", null: false
    t.integer "paper_id", null: false
    t.index ["author_id", "paper_id"], name: "index_authors_papers_on_author_id_and_paper_id"
    t.index ["paper_id", "author_id"], name: "index_authors_papers_on_paper_id_and_author_id"
  end

  create_table "join_table_author_papers", force: :cascade do |t|
    t.integer "author_id", null: false
    t.integer "paper_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["author_id"], name: "index_join_table_author_papers_on_author_id"
    t.index ["paper_id"], name: "index_join_table_author_papers_on_paper_id"
  end

  create_table "papers", force: :cascade do |t|
    t.string "title"
    t.string "venue"
    t.integer "year"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "join_table_author_papers", "authors"
  add_foreign_key "join_table_author_papers", "papers"
end
