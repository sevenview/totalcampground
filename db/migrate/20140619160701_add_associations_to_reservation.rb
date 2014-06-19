class AddAssociationsToReservation < ActiveRecord::Migration
  def change
    add_column :reservations, :camper_id, :integer
    add_column :reservations, :lot_id, :integer

    add_index :reservations, :camper_id
    add_index :reservations, :lot_id
  end
end
