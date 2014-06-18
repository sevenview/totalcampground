class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.date    :start_date
      t.date    :end_date
      t.string  :name
      t.text    :notes
      t.boolean :checked_in, default: false
      t.integer :adults
      t.integer :children
      t.integer :pets
      t.timestamps
    end
  end
end
