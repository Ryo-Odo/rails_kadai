class ChuntersToPosts < ActiveRecord::Migration[6.0]
  def change
    rename_table :chunters, :posts
  end
end
