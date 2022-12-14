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

ActiveRecord::Schema[7.0].define(version: 2022_12_14_162344) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "product_color_size_and_images", force: :cascade do |t|
    t.string "color"
    t.integer "size"
    t.string "image"
    t.bigint "product_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_product_color_size_and_images_on_product_id"
  end

  create_table "products", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "category"
    t.string "name"
    t.float "price"
    t.string "image"
    t.string "color"
    t.string "size"
    t.string "description"
  end

  add_foreign_key "product_color_size_and_images", "products"
end
