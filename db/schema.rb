ActiveRecord::Schema.define(version: 2021_11_15_142341) do

  create_table "books", primary_key: "b_id", id: :string, force: :cascade do |t|
    t.string "b_title"
    t.string "author"
    t.string "publisher"
    t.integer "year"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
