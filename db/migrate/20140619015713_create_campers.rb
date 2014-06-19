class CreateCampers < ActiveRecord::Migration
  def change
    create_table :campers do |t|
      t.string :last_name
      t.string :first_name
      t.string :address
      t.string :city
      t.string :province
      t.string :postal_code
      t.string :phone
      t.string :mobile
      t.string :email
      t.string :country
      t.text :notes
      t.timestamps
    end
  end
end
