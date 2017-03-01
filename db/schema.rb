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

ActiveRecord::Schema.define(version: 20170301153307) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "favorites", force: :cascade do |t|
    t.integer "user_id"
    t.integer "recipe_id"
    t.index ["recipe_id"], name: "index_favorites_on_recipe_id", using: :btree
    t.index ["user_id"], name: "index_favorites_on_user_id", using: :btree
  end

  create_table "foods", force: :cascade do |t|
    t.string   "name",                            null: false
    t.string   "img_url"
    t.decimal  "fat",             default: "0.0"
    t.decimal  "protein",         default: "0.0"
    t.decimal  "carbohydrates",   default: "0.0"
    t.decimal  "calories",        default: "0.0"
    t.boolean  "vegetarian",      default: false
    t.boolean  "gluten_free",     default: false
    t.decimal  "serving_size",    default: "0.0"
    t.string   "unit_of_measure", default: ""
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "ingredients", force: :cascade do |t|
    t.integer  "amount"
    t.string   "unit_of_measure"
    t.integer  "recipe_id"
    t.integer  "food_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["food_id"], name: "index_ingredients_on_food_id", using: :btree
    t.index ["recipe_id"], name: "index_ingredients_on_recipe_id", using: :btree
  end

  create_table "recipes", force: :cascade do |t|
    t.string   "name"
    t.text     "instructions"
    t.string   "img_url"
    t.decimal  "servings",            default: "1.0"
    t.decimal  "total_calories",      default: "0.0"
    t.decimal  "total_fat",           default: "0.0"
    t.decimal  "total_protein",       default: "0.0"
    t.decimal  "total_carbohydrates", default: "0.0"
    t.boolean  "vegetarian",          default: false
    t.boolean  "gluten_free",         default: false
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  create_table "supplies", force: :cascade do |t|
    t.integer  "amount"
    t.string   "unit_of_measure"
    t.integer  "user_id"
    t.integer  "food_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["food_id"], name: "index_supplies_on_food_id", using: :btree
    t.index ["user_id"], name: "index_supplies_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.boolean  "vegetarian",             default: false
    t.boolean  "gluten_free",            default: false
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "favorites", "recipes"
  add_foreign_key "favorites", "users"
  add_foreign_key "ingredients", "foods"
  add_foreign_key "ingredients", "recipes"
  add_foreign_key "supplies", "foods"
  add_foreign_key "supplies", "users"
end
