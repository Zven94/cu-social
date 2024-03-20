# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_03_19_205451) do
  create_table "claims", force: :cascade do |t|
    t.string "claim_name", limit: 100
    t.string "claim_img"
    t.string "claim_description"
    t.integer "claim_votes", default: 0
    t.boolean "claim_status", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.integer "product_id_id", null: false
    t.string "product_name", limit: 100
    t.string "product_img"
    t.string "product_desciption"
    t.integer "product_votes", default: 0
    t.float "product_price", default: 0.0
    t.boolean "product_status", default: false
    t.boolean "product_sold", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id_id"], name: "index_products_on_product_id_id"
  end

  create_table "projects", force: :cascade do |t|
    t.integer "project_id_id", null: false
    t.string "project_name", limit: 100
    t.string "project_img"
    t.string "project_desciption"
    t.integer "project_votes", default: 0
    t.float "project_estimation", default: 0.0
    t.boolean "project_status", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id_id"], name: "index_projects_on_project_id_id"
  end

  create_table "users", force: :cascade do |t|
    t.integer "user_id_id", null: false
    t.string "user_name", limit: 24
    t.string "user_second_name", limit: 24
    t.string "user_last_name", limit: 24
    t.integer "user_dni", limit: 8
    t.text "user_img"
    t.string "user_municipality"
    t.string "user_state"
    t.string "user_country", default: "Argentina"
    t.integer "user_karma", default: 0
    t.boolean "user_verify", default: false
    t.boolean "user_banned", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id_id"], name: "index_users_on_user_id_id"
  end

  add_foreign_key "products", "product_ids"
  add_foreign_key "projects", "project_ids"
  add_foreign_key "users", "user_ids"
end
