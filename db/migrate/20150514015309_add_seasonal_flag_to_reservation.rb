class AddSeasonalFlagToReservation < ActiveRecord::Migration
  def change
    add_column :reservations, :seasonal, :boolean, default: false
  end
end
