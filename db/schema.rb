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

ActiveRecord::Schema.define(version: 2021_08_05_214559) do

  create_table "admins", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "categories", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "title"
    t.bigint "roro_id", null: false
    t.bigint "container_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["container_id"], name: "index_categories_on_container_id"
    t.index ["roro_id"], name: "index_categories_on_roro_id"
  end

  create_table "cities", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "containers", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "type"
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "countries", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "dateupdates", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "datetime"
    t.string "hour"
    t.string "minute"
    t.string "second"
    t.string "day"
    t.string "month"
    t.string "year"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pods", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "city_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["city_id"], name: "index_pods_on_city_id"
  end

  create_table "pols", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "city_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["city_id"], name: "index_pols_on_city_id"
  end

  create_table "rateitems", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.float "price"
    t.bigint "tag_id", null: false
    t.bigint "category_id", null: false
    t.bigint "shipline_id", null: false
    t.bigint "pol_id", null: false
    t.bigint "pod_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_id"], name: "index_rateitems_on_category_id"
    t.index ["pod_id"], name: "index_rateitems_on_pod_id"
    t.index ["pol_id"], name: "index_rateitems_on_pol_id"
    t.index ["shipline_id"], name: "index_rateitems_on_shipline_id"
    t.index ["tag_id"], name: "index_rateitems_on_tag_id"
  end

  create_table "roros", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "shiplines", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "states", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.bigint "country_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["country_id"], name: "index_states_on_country_id"
  end

  create_table "tags", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "updatechanges", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.float "newprice"
    t.bigint "tag_id", null: false
    t.bigint "admin_id", null: false
    t.bigint "category_id", null: false
    t.bigint "shipline_id", null: false
    t.bigint "pol_id", null: false
    t.bigint "pod_id", null: false
    t.bigint "updatechange_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["admin_id"], name: "index_updatechanges_on_admin_id"
    t.index ["category_id"], name: "index_updatechanges_on_category_id"
    t.index ["pod_id"], name: "index_updatechanges_on_pod_id"
    t.index ["pol_id"], name: "index_updatechanges_on_pol_id"
    t.index ["shipline_id"], name: "index_updatechanges_on_shipline_id"
    t.index ["tag_id"], name: "index_updatechanges_on_tag_id"
    t.index ["updatechange_id"], name: "index_updatechanges_on_updatechange_id"
  end

  add_foreign_key "categories", "containers"
  add_foreign_key "categories", "roros"
  add_foreign_key "pods", "cities"
  add_foreign_key "pols", "cities"
  add_foreign_key "rateitems", "categories"
  add_foreign_key "rateitems", "pods"
  add_foreign_key "rateitems", "pols"
  add_foreign_key "rateitems", "shiplines"
  add_foreign_key "rateitems", "tags"
  add_foreign_key "states", "countries"
  add_foreign_key "updatechanges", "admins"
  add_foreign_key "updatechanges", "categories"
  add_foreign_key "updatechanges", "pods"
  add_foreign_key "updatechanges", "pols"
  add_foreign_key "updatechanges", "shiplines"
  add_foreign_key "updatechanges", "tags"
  add_foreign_key "updatechanges", "updatechanges"
end
