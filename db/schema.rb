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

ActiveRecord::Schema[7.0].define(version: 2023_06_21_151900) do
  create_table "chords", force: :cascade do |t|
    t.string "name"
    t.integer "key_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["key_id"], name: "index_chords_on_key_id"
  end

  create_table "instruments", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "keys", force: :cascade do |t|
    t.string "name"
    t.string "variable"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "songs", force: :cascade do |t|
    t.string "name"
    t.integer "key_id", null: false
    t.integer "instrument_id", null: false
    t.integer "style_id", null: false
    t.binary "midi"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["instrument_id"], name: "index_songs_on_instrument_id"
    t.index ["key_id"], name: "index_songs_on_key_id"
    t.index ["style_id"], name: "index_songs_on_style_id"
  end

  create_table "styles", force: :cascade do |t|
    t.string "chord_style"
    t.string "bass_style"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "chords", "keys"
  add_foreign_key "songs", "instruments"
  add_foreign_key "songs", "keys"
  add_foreign_key "songs", "styles"
end
