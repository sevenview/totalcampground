class AddCreditCardInfoToReservation < ActiveRecord::Migration
  def change
    add_column :reservations, :encrypted_credit_card_number, :string
    add_column :reservations, :credit_card_expiry_month, :integer
    add_column :reservations, :credit_card_expiry_year, :integer
  end
end
