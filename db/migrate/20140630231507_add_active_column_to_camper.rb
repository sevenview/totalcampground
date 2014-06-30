class AddActiveColumnToCamper < ActiveRecord::Migration
  def change
    add_column :campers, :active, :boolean, default: true
  end
end
