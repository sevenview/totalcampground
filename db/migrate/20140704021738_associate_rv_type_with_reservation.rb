class AssociateRvTypeWithReservation < ActiveRecord::Migration
  def change
    add_column :reservations, :rv_type_id, :integer
    add_index :reservations, :rv_type_id
  end
end
