class RemoveNameFromReservation < ActiveRecord::Migration
  def change
    remove_column :reservations, :name
  end
end
