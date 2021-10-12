ActiveRecord::Schema.define(version: 2021_10_12_075348) do

  enable_extension "plpgsql"

  create_table "chunters", force: :cascade do |t|
    t.text "content"
  end

end
