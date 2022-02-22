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

ActiveRecord::Schema.define(version: 2022_02_16_195056) do

  create_table "bases", force: :cascade do |t|
    t.string "country_code"
  end

  create_table "rates", force: :cascade do |t|
    t.string "country_code"
    t.float "rate_value"
    t.date "date"
    t.integer "base_id"
    t.index ["base_id"], name: "index_rates_on_base_id"
  end

end
