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

ActiveRecord::Schema[8.0].define(version: 2025_07_04_204147) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "emails", force: :cascade do |t|
    t.string "from", null: false
    t.text "subject", null: false
    t.text "body", null: false
    t.datetime "received_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.boolean "read", default: false, null: false
    t.boolean "starred", default: false, null: false
    t.text "labels", default: [], array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "avatar"
    t.index ["labels"], name: "index_emails_on_labels", using: :gin
    t.index ["read", "received_at"], name: "index_emails_on_read_and_received_at"
    t.index ["read"], name: "index_emails_on_read"
    t.index ["received_at"], name: "index_emails_on_received_at"
    t.index ["starred"], name: "index_emails_on_starred"
  end
end
