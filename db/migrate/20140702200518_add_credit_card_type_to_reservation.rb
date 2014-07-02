class AddCreditCardTypeToReservation < ActiveRecord::Migration
  def change
    add_column :reservations, :credit_card_type, :string
  end
end
