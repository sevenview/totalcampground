class LinkLotToStreet < ActiveRecord::Migration
  def change
    add_column :lots, :street_id, :integer
  end
end
