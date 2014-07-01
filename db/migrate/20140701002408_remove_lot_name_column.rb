class RemoveLotNameColumn < ActiveRecord::Migration
  def change
    remove_column :lots, :name, :string
  end
end
