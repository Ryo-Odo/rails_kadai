class CreateChunters < ActiveRecord::Migration[6.0]
  def change
    create_table :chunters do |t|
      t.text :content
    end
  end
end
