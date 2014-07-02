class AddSecurityCardNumberToReservation < ActiveRecord::Migration
  def change
    add_column :reservations, :security_card_number, :integer
  end
end
