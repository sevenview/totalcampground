class AddActiveFlatToReservation < ActiveRecord::Migration
  def change
    add_column :reservations, :active, :boolean, default: true
  end
end
