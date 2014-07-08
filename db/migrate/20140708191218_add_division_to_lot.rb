class AddDivisionToLot < ActiveRecord::Migration
  def change
    add_column :lots, :division, :string
  end
end
