class AddMissingIndexes < ActiveRecord::Migration
  def change
    add_index :lots, :street_id
  end
end
